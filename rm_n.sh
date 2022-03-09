#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "usage: $0 <dir> <n>" 1>&2
    exit 0
fi

cd ~/Desktop/linuxExercises/$1
files=$(find ./ -size +$2)
rm -r $files
