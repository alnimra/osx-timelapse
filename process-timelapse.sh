#!/bin/bash
#
# Create timelapse movies from images in the output/screen and output/isight folders
#

COUNTER=0;
for i in `find ./imgs/source/. -name '*.jpg' | sort -n` ;
do
  # Write the filename to be friendly with ffmpeg's old filename input
  FILENAME=`printf '%05d.jpg' $COUNTER`
  cp $i ./imgs/output/$FILENAME
  let COUNTER=COUNTER+1;
done

nice ffmpeg -r 30 -i ./imgs/output/%5d.jpg timelapse.mov