#!/bin/bash
# timelapse
#
# Records a sequence of screencaptures at regular intervals on
# Mac OS X.
#
# Can also record using webcam via the imagesnap program.
#
mkdir imgs imgs/source imgs/output
while true; do
    timestamp=$(date '+%Y-%m-%dT%H%M%S');
    echo "Capturing screen at $timestamp."
    # For one screen:
    screencapture -t jpg -x "./imgs/source/screen1-$timestamp.jpg";
    sips -Z 1920 "./imgs/source/screen1-$timestamp.jpg"

    # For two screens:
    # screencapture -x "screen1-$timestamp.png" "screen2-$timestamp.png";

    sleep 1;
done;

# After it's finished, you probably want to play around with image
# magick to stitch the images together and create a movie.
# Specifically look at the tools montage and convert.

