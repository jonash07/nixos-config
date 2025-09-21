#!/usr/bin/env bash


check_dirs() {
  if ![ -d ~/Wallpaper ]; then
    mkdir ~/Wallpaper
    mkdir ~/Wallpaper/Wallpapers
    return false
  ;fi
  
  if ![ -d ~/Wallpaper/Wallpapers ]; then
    mkdir ~/Wallpaper/Wallpapers
    return false
  ;fi

  return true

}


get_wallpapers() {
  wallpapers=()

  for item in $(ls ~/Wallpapers/); do  
    wallpapers+=($item)
  done

  return wallpapers

}


check_wallpapers() {
  wallpapers=get_wallpapers
 
  if [wallpapers = ()]; then
    return false
  ;fi

  return true

}


run_checks() {
  if ![ check_dirs ]; then
    return false
  ;fi

  if ![ check_wallpapers ]; then
    return false
  ;fi

  return true

}


check_latest() {
  if ![ -f ~/Wallpaper/latest.txt ]; then
    touch ~/Wallpaper/latest.txt
    return false
  ;fi

  wallpapers=get_wallpapers

  for wp in ${wallpapers[@]}; do
    if [ $(cat ~/Wallpaper/latest.txt) -eq $wp ]; then
      return True
    ;fi
  done

  return false
  
}


gen_ran_duration() {
  durations=(1.5 2 2.5)
  RANDOM=$$$(date +%s)
  ran_dur=${durations[ $RANDOM % ${#durations[@]} ]}
  return $ran_dur

}


gen_ran_angle() {
  angles=(0 45 90 135 180 225 270 315)
  RANDOM=$$$(date +%s)
  ran_angle=${angles[ $RANDOM % ${#angles[@]} ]}
  return $ran_angle

}


default_wallpaper() {
  ran_angle=gen_ran_angle
  ran_dur=gen_ran_dur
  swww img -t wipe --transition-angle $ran_angle --transition-duration $ran_dur ./default.png

}


apply_wallpaper() {
  ran_angle=gen_ran_angle
  ran_dur=gen_ran_duration
  swww img -t wipe --transition-angle $ran_angle --transition-duration 1.5 $ran_dur $1
  echo "$1" > ~/Wallpaper/latest.txt

}


core() {
  if ![ run_checks ]; then
    default_wallpaper
    exit 0
  ;fi
  
  wallpapers=get_wallpapers

  if ![ check_latest ]; then
    apply_wallpaper ${wallpapers[0]}
    exit 0
  ;fi

}


get_index() {
  wallpapers=get_wallpapers

  current=$(cat ~/Wallpaper/latest.txt)

  length=${#wallpapers[@]}

  index=0

  for wp in ${wallpapers[@]}; do 
    if [ $wp -eq $current ]; then
      break 
    ;fi
    index=$(($index+1))
  done

  return $index

}


main() {
  if ![ run_checks ]; then
    default_wallpaper
    exit 0
  ;fi
  
  wallpapers=get_wallpapers

  if ![ check_latest ]; then
    apply_wallpaper ${wallpapers[0]}
    exit 0
  ;fi

  option=$1  

  current=$(cat ~/Wallpaper/latest.txt)

  # Init 
  if [ $option -eq 1 ]; then
    apply_wallpaper $current
    exit 0
  ;fi

  length=${#wallpapers[@]}

  index=0

  for wp in ${wallpapers[@]}; do 
    if [ $wp -eq $current ]; then
      break 
    ;fi
    index=$(($index+1))
  done

  # Next 
  if [ $option -eq 2 ]; then 
    next=$(($index+1))

    if [ $index -eq $length ]; then
      next=0
    ;fi 

    apply_wallpaper ${wallpapers[$next]}
    exit 0
  ;fi

  # Previous 
  if [ $option -eq 3 ]; then 
    next=$(($index-1))

    if [ $index -eq 0 ]; then
      next=$length
    ;fi 

    apply_wallpaper ${wallpapers[$next]} 
    exit 0
  ;fi

}


while getopts ":i:n:p" option; do
  case $option in
    i)
      main 1
      ;;
    n)
      main 2
      ;;
    p)
      main 3 
      ;;
    *)
      exit 1
      ;;
  esac
done

