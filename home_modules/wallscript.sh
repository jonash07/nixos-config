#!/usr/bin/env bash

# angles = 0, 45, 90, 135, 180, 225, 270, 315

# swww img -t wipe --transition-angle $rangom_angle --transition-duration 1.5 $image

length=0
current=0
wallpapers=()

# Assemble the list of wallpapers and the length of them
for item in $(ls ~/Wallpapers/); do 
  echo $length
  wallpapers+=($item)
  length=$(($length + 1))
  echo $item
done

echo " "

for wp in ${wallpapers[@]}; do 
  echo $wp
done

echo ${wallpapers[*]}

