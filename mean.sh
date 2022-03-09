#!/bin/bash

function mean {
    local col=$1
    local file=$2
    
    x=$(find ~/Desktop/linuxExercises $file | cut -d ',' -f $col)
    
    count=0
    total=0

    for i in $x
    do
	#total=$(echo $total+$i | bc)
	#((count++))
	echo $i
    done

    avg=$(( $total / $count ))

    echo $avg
}


if (( $# == 1 )); then
    #Supposed to deal with taking in only 1 argument, will edit later.
elif(( $# == 2 )); then
    mean $1 $2
else
    echo "usage: $0 <column> [file.csv]"
    exit 0
fi
