#!/bin/bash

# Author: AiratTop @AiratTop
# GitHub: https://github.com/AiratTop/imagemagick-watermark
# License: MIT

# This script compresses and resizes photos from the source folder and applies a watermark.
# File names are preserved.

# Compression quality in percentage:
QUALITY=85
# Resize dimensions while maintaining the aspect ratio (width in pixels):
SIZE=1024
# Watermark file name (no spaces):
WATER=water.png
# Source folder containing the original images:
SOURCE=images

# Create folders for results
mkdir -p result-small
mkdir -p result-water

# Compress and resize images, then save them to the result-small folder
# File names and aspect ratios are preserved.
if [ -d "$SOURCE" ]; then
    cd "$SOURCE" || exit
    for f in *.*; do
        convert "$f" -resize "$SIZE" -quality "$QUALITY" ../result-small/"$f"
    done
    cd ..
else
    echo "The folder '$SOURCE' with source images does not exist!"
    exit 1
fi

# Apply the watermark to the images and save them to the result-water folder
# Prepare the watermark in advance and place it in the root folder.
# The watermark file must be named water.png, or its name should be set in the WATER variable.
if [ -f "$WATER" ]; then
    cd result-small || exit
    for f in *.*; do
        composite -gravity center ../"$WATER" "$f" ../result-water/"$f"
    done
    echo "Done!"
else
    echo "The watermark file '$WATER' does not exist!"
    exit 2
fi
