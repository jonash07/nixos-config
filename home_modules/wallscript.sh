#!/usr/bin/env bash


check_dirs() {
  # Check for the main directory
  if ![ -d ~/Wallpaper ]; then
    mkdir ~/Wallpaper
    mkdir ~/Wallpaper/Wallpapers
    return false
  ;fi
  
  # Check for the wallpapers directory
  if ![ -d ~/Wallpaper/Wallpapers ]; then
    mkdir ~/Wallpaper/Wallpapers
    return false
  ;fi

  return true

}


check_wallpapers() {
  wallpapers=$(ls ~/Wallpaper/Wallpapers)
  
  # If there are none use the default
  if [wallpapers = ""]; then
    return false
  ;fi

  return true

}


run_checks() {
  # Check if valid directories exist
  if ![ check_dirs ]; then
    return false
  ;fi

  # Check if any wallpapers exist
  if ![ check_wallpapers ]; then
    return false
  ;fi

  return true

}


index_wallpapers() {
  current=0
  wallpapers=()

  # Assemble the list of wallpapers and the length of them
  for item in $(ls ~/Wallpapers/); do 
    echo $length
    wallpapers+=($item)
    echo $item
  done

  echo " "

  for wp in ${wallpapers[@]}; do 
    echo $wp
  done

  echo ${wallpapers[*]}

}


check_latest() {
  if [  ]; then
    #...
    #make file
    return false
  ;fi

  if [  ]; then
    #...
    return false
  ;fi

  return true
  
  # check if it exists at all
  # check if it has a valid wallpaper in it or anything at all
}


gen_ran_angle() {
  angles=(0 45 90 135 180 225 270 315)
  RANDOM=$$$(date +%s)
  ran_angle=${angles[ $RANDOM % ${#angles[@]} ]}
  return $ran_angle

}


init_wallpaper() {
  ran_angle=gen_ran_angle

  if ![ run_checks ]; then
    swww img -t wipe --transition-angle $ran_angle --transition-duration 1.5 ./default.png
    exit 0
  ;fi
  
  if ![ check_latest ]; then
    #...
    # init latest file
    exit 0
  ;fi

  # init here

}


next_wallpaper() {
  # Get a random transition angle
  ran_angle=gen_ran_angle

  if ![ run_checks ]; then
    swww img -t wipe --transition-angle $ran_angle --transition-duration 1.5 ./default.png 
    exit 0
  ;fi
 
  if ![ check_latest ]; then
    #...
    # init latest file
    exit 0
  ;fi

  # load here
  
}


previous_wallpaper() {
  # Get a random transition angle
  ran_angle=gen_ran_angle

  if ![ run_checks ]; then
    swww img -t wipe --transition-angle $ran_angle --transition-duration 1.5 ./default.png
    exit 0
  ;fi
  
  if ![ check_latest ]; then
    #...
    # init latest file
    exit 0
  ;fi

  # load here

}


while getopts ":i:n:p" option; do
  case $option in
    i)
      init_wallpaper
      exit 0
      ;;
    n)
      next_wallpaper
      exit 0
      ;;
    p)
      previous_wallpaper
      exit 0
      ;;
    *)
      exit 1
      ;;
  esac
done

