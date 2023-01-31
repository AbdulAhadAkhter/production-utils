#!/bin/bash
file_types_regex="\.([cC[rR]2|[dD][nN][gG]|[pP][nN][gG]|[jJ][pP][eE][gG]|[jJ][pP][gG]|[wW][aA][vV])|[mM][pP]4)$"

# file_types=(png PNG jpeg JPEG avi AVI mp4 MP4 mp3 MP3 wav WAV)
for file in *; do
    echo "$file"
  if [ -f "$file" ]; then
    ext="${file##*.}"
    if [[ "$file" =~ $file_types_regex ]]; then
      date=$(stat -f "%Sm" -t "%Y-%m-%d" "$file" | awk '{print $1}' | tr -d "-")
      if [ ! -d "$date" ]; then
        mkdir "$date"
      fi
      mv "$file" "$date/"
    fi
  fi
done
