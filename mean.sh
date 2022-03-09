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
	    total=$(echo "scale=2; $total+$x" | bc)
	    ((count++))
	fi
    done < $file
    
    avg=$(echo "scale=2; $total/$count" | bc)
    echo $avg
}

if (( $# == 1 )); then
    echo $(</dev/stdin) >> custom.csv
    mean $1 "custom.csv"
elif (( $# == 2 )); then
    mean $1 $2
else
    echo "usage: $0 <column> [file.csv]"
    exit 0
fi
