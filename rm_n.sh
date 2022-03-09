#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "usage: $0 <dir> <n>" 1>&2
    exit 0
fi

cd ~/Desktop/linuxExercises/$1
files=$(find ./ -size +$2)
rm -r $files



#for i in $(ls); do
    #echo $i
    #files=$(find $i -size +4)
    #rm -r files
    #echo $files
    #cd ~/Desktop/linuxExercises/$1/$i
    #ls
    #files=$(find files -size +4)
    #echo $files
   #for j in $(ls); do
	#txt=$(find ./ -size +3)
	#rm -r $txt
    #done
#done
