#!/bin/bash

# Directory to search, default is current directory if not specified
DIRECTORY=${1:-.}

# Find and list video files
echo "Searching for video files in $DIRECTORY"
find "$DIRECTORY" -type f \( -iname "*.mp4" -o -iname "*.avi" -o -iname "*.mov" -o -iname "*.mkv" -o -iname "*.flv" -o -iname "*.wmv" \)
