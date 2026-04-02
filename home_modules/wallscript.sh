#!/usr/bin/env bash


check_dirs() {
  if ! [ -d ~/Wallpaper ]; then
    mkdir ~/Wallpaper
    mkdir ~/Wallpaper/Wallpapers
    echo 0
    return;
  fi
  
  if ! [ -d ~/Wallpaper/Wallpapers ]; then
    mkdir ~/Wallpaper/Wallpapers
    echo 0
    return;
  fi

  echo 1

}


get_wallpapers() {
  local list_wps=$(ls ~/Wallpaper/Wallpapers/)
  readarray -d "  " -t wallpapers <<< "$list_wps"
  wps=()

  for word in "${wallpapers[@]}"; do 
    wps+=($word)
  done

}


check_wallpapers() {
  if [ ${#wps[@]} -eq 0 ]; then
    echo 0
    return;
  fi

  echo 1

}


run_checks() {
  if [ $(check_dirs) == 0 ]; then
    echo 0
    return;
  fi

  get_wallpapers

  if [ $(check_wallpapers) == 0 ]; then
    echo 0
    return;
  fi

  echo 1

}


check_latest() {
  if ! [ -f ~/Wallpaper/latest.txt ]; then
    echo 0
    return;
  fi

  if ! [ $(cat ~/Wallpaper/latest.txt) ]; then
    echo 0
    return;
  fi

  for wp in ${wps[@]}; do
    if [ $(cat ~/Wallpaper/latest.txt) == $wp ]; then
      echo 1 
      return;
    fi
  done

  echo 0
  
}


gen_ran_duration() {
  local durations=(1.5 2 2.5)
  local rand=$(shuf -i 0-2 -n 1)
  local ran_dur=${durations[$rand]}
  echo $ran_dur

}


gen_ran_angle() {
  local angles=(0 45 90 135 180 225 270 315)
  local rand=$(shuf -i 0-7 -n 1)
  local ran_angle=${angles[$rand]}
  echo $ran_angle

}


default_wallpaper() {
  local angle=$(gen_ran_angle)
  local dur=$(gen_ran_duration)
  awww img -t wipe --transition-angle $angle --transition-duration $dur ./default.png

}


apply_wallpaper() {
  local angle=$(gen_ran_angle)
  local dur=$(gen_ran_duration)
  awww img -t wipe --transition-angle $angle --transition-duration $dur ~/Wallpaper/Wallpapers/$1
  echo $1 > ~/Wallpaper/latest.txt

}


main() {
  if [ $(run_checks) == 0 ]; then
    default_wallpaper
    exit 0;
  fi

  get_wallpapers

  if [ $(check_latest) == 0 ]; then
    apply_wallpaper ${wps[0]}
    exit 0;
  fi

  local option=$1  

  local current=$(cat ~/Wallpaper/latest.txt)

  # Init 
  if [ $option == 1 ]; then
    apply_wallpaper $current
    exit 0;
  fi

  local length=${#wps[@]}

  local index=0

  for wp in ${wps[@]}; do 
    if [ $wp == $current ]; then
      break;
    fi
    index=$(($index+1))
  done

  # Next 
  if [ $option == 2 ]; then
    next=$(($index+1))

    if [ $next == $length ]; then
      next=0;
    fi 

    apply_wallpaper ${wps[$next]}

    exit 0;
  fi

  # Previous 
  if [ $option == 3 ]; then 
    next=$(($index-1))

    if [ $next == -1 ]; then
      next=$(($length-1));
    fi 

    apply_wallpaper ${wps[$next]} 
    exit 0;
  fi

}


if ! [ $1 ]; then
  exit 1;
fi


main $1

