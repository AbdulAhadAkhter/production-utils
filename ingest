#!/bin/bash

img_dir="./images"
audio_dir="./audio"
video_dir="./video"

mkdir -p $img_dir $audio_dir $video_dir

for file in *.[jJ][pP][gG] *.[jJ][pP][eE][gG] *.[pP][nN][gG]; do
  [ -f "$file" ] || break
  echo "Moving $file to $img_dir"
  mv "$file" "$img_dir"
done

for file in *.[mM][pP]3 *.[wW][aA][vV] *.[aA][aA][cC]; do
  [ -f "$file" ] || break
  echo "Moving $file to $audio_dir"
  mv "$file" "$audio_dir"
done

for file in *.[mM][pP]4 *.[aA][vV][iI] *.[mM][kK][vV]; do
  [ -f "$file" ] || break
  echo "Moving $file to $video_dir"
  mv "$file" "$video_dir"
done
