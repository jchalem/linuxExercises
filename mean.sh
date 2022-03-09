#!/bin/bash

function mean {
    local col=$1
    local file=$2
    
    count=0
    total=0
    skip=0
    
    while read -r line; do
	if (( skip == 0 )); then
            skip=1
	else
	    x=$(echo $line | cut -d "," -f $col)
	    total=$(($total+$x))
	    ((count++))
	fi
    done < $file
    
    avg=$(($total/$count))
    echo $avg
}

if (( $# == 1 )); then
    file="mtcars.csv"
    mean $1 $file
elif (( $# == 2 )); then
    mean $1 $2
else
    echo "usage: $0 <column> [file.csv]"
    exit 0
fi
