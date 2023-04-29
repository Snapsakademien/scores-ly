#!/bin/bash
SONGS_PATH="./songs/*.ly"

for f in $SONGS_PATH
do 
    if [ -f "$f" ]
    then
        filenameAndExtension=$(basename -- "$f")
        filename="${filenameAndExtension%.*}"
        echo $f
        echo $filename
        mkdir ./songs/$filename
        mv $f ./songs/$filename/main.ly
    fi
done