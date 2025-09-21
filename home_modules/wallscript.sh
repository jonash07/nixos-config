#!/usr/bin/env bash


check_dirs() {
  if ! [ -d ~/Wallpaper ]; then
    mkdir ~/Wallpaper
    mkdir ~/Wallpaper/Wallpapers
    false;
  fi
  
  if ! [ -d ~/Wallpaper/Wallpapers ]; then
    mkdir ~/Wallpaper/Wallpapers
    false;
  fi

  true

}


get_wallpapers() {
  wallpapers=()

  for item in $(ls ~/Wallpaper/Wallpapers); do  
    wallpapers+=($item)
  done

  echo $wallpapers

}


check_wallpapers() {
  wallpapers=$(get_wallpapers)
 
  if [ ${#array[@]} -eq 0 ]; then
    false;
  fi

  true

}


run_checks() {
  if ! [ $(check_dirs) ]; then
    false;
  fi

  if ! [ $(check_wallpapers) ]; then
    false;
  fi

  true

}


check_latest() {
  if ! [ -f ~/Wallpaper/latest.txt ]; then
    touch ~/Wallpaper/latest.txt
    false;
  fi

  wallpapers=$(get_wallpapers)

  for wp in ${wallpapers[@]}; do
    if [ $(cat ~/Wallpaper/latest.txt) -eq $wp ]; then
      true;
    fi
  done

  false
  
}


gen_ran_duration() {
  durations=(1.5 2 2.5)
  rand=$(shuf -i 0-2 -n 1)
  ran_dur=${durations[$rand]}
  echo $ran_dur

}


gen_ran_angle() {
  angles=(0 45 90 135 180 225 270 315)
  rand=$(shuf -i 0-7 -n 1)
  ran_angle=${angles[$rand]}
  echo $ran_angle

}


default_wallpaper() {
  angle=$(gen_ran_angle)
  dur=$(gen_ran_duration)
  swww img -t wipe --transition-angle $angle --transition-duration $dur ./default.jpg

}


apply_wallpaper() {
  angle=$(gen_ran_angle)
  dur=$(gen_ran_duration)
  swww img -t wipe --transition-angle $angle --transition-duration 1.5 $dur $1
  echo "$1" > ~/Wallpaper/latest.txt

}


main() {
  if ! [ $(run_checks) ]; then
    default_wallpaper
    exit 0;
  fi
  
  wallpapers=$(get_wallpapers)

  if ! [ $(check_latest) ]; then
    apply_wallpaper ${wallpapers[0]}
    exit 0;
  fi

  option=$1  

  current=$(cat ~/Wallpaper/latest.txt)

  # Init 
  if [ $option -eq 1 ]; then
    apply_wallpaper $current
    exit 0;
  fi

  length=${#wallpapers[@]}

  index=0

  for wp in ${wallpapers[@]}; do 
    if [ $wp -eq $current ]; then
      break;
    fi
    index=$(($index+1))
  done

  # Next 
  if [ $option -eq 2 ]; then 
    next=$(($index+1))

    if [ $index -eq $length ]; then
      next=0;
    fi 

    apply_wallpaper ${wallpapers[$next]}
    exit 0;
  fi

  # Previous 
  if [ $option -eq 3 ]; then 
    next=$(($index-1))

    if [ $index -eq 0 ]; then
      next=$length;
    fi 

    apply_wallpaper ${wallpapers[$next]} 
    exit 0;
  fi

}


if ! [ $1 ]; then
  exit 1
fi


main $1

