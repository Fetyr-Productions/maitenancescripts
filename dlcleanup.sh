#!/bin/bash

###############################################################
# This script cleans up the Downloads folder by sorting all   #
# files by extension, then putting them into the corresponding#
# folder.  For example, .doc and .docx go into Documents.     #
#                                                             #
# Author: Jordan Cameron				      #
# email: jordan.cameron95@gmail.com                           #
# License: GNU                                                #
###############################################################

echo "Starting cleanup, starting with documents."

echo "Please note that all folders created for use during cleanup reside in the ~/Downloads Directory."

sleep 2s

echo "Making Documents Directory"

mkdir /home/$USER/Downloads/Documents

sleep 2s

echo "Finding .docx files"

find /home/$USER/Downloads/ -type f -name "*.docx" -exec mv {} /home/$USER/Downloads/Documents ';'

find /home/$USER/Downloads/ -type f -name "*.doc" -exec mv {} /home/$USER/Downloads/Documents ';'

find /home/$USER/Downloads/ -type f -name "*.odt" -exec mv {} /home/$USER/Downloads/Documents ';'

find /home/$USER/Downloads/ -type f -name "*.txt" -exec mv {} /home/$USER/Downloads/Documents ';'

find /home/$USER/Downloads/ -type f -name "*.pdf" -exec mv {} /home/$USER/Downloads/Documents ';'

find /home/$USER/Downloads/ -type f -name "*.ppt" -exec mv {} /home/$USER/Downloads/Documents ';'

sleep 2s

echo "Making a Music Directory"

mkdir /home/$USER/Downloads/Music

sleep 2s

echo "Finding music files"

find /home/$USER/Downloads/ -type f -name "*.mp3" -exec mv {} /home/$USER/Downloads/Music ';'

find /home/$USER/Downloads/ -type f -name "*.m4a" -exec mv {} /home/$USER/Downloads/Music ';'

find /home/$USER/Downloads/ -type f -name "*.ogg" -exec mv {} /home/$USER/Downloads/Music ';'

find /home/$USER/Downloads/ -type f -name "*.wav" -exec mv {} /home/$USER/Downloads/Music ';'

sleep 2s

echo "Finding Movie Files"

echo "Making a Video Directory"

mkdir /home/$USER/Downloads/Videos

find /home/$USER/Downloads/ -type f -name "*.mp4" -exec mv {} /home/$USER/Downloads/Videos ';'

find /home/$USER/Downloads/ -type f -name "*.mov" -exec mv {} /home/$USER/Downloads/Videos ';'

find /home/$USER/Downloads/ -type f -name "*.mkv" -exec mv {} /home/$USER/Downloads/Videos ';'

find /home/$USER/Downloads/ -type f -name "*.avi" -exec mv {} /home/$USER/Downloads/Videos ';'

sleep 2s

echo "Finding Compressed Files"

echo "Making a Compressed Directory"

mkdir /home/$USER/Downloads/Compressed

find /home/$USER/Downloads/ -type f -name "*.tar*" -exec mv {} /home/$USER/Downloads/Compressed ';'

find /home/$USER/Downloads/ -type f -name "*.7z" -exec mv {} /home/$USER/Downloads/Compressed ';'

find /home/$USER/Downloads/ -type f -name "*.rar" -exec mv {} /home/$USER/Downloads/Compressed ';'

find /home/$USER/Downloads/ -type f -name "*.zip" -exec mv {} /home/$USER/Downloads/Compressed ';'

