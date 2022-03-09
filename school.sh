#!/bin/bash

cat Property_Tax_Roll.csv
x=$(grep "MADISON SCHOOLS" Property_Tax_Roll.csv | cut -d ',' -f 7)

count=0;
total=0;

for i in $x
do
    total=$(echo $total+$i | bc)
    ((count++))
done

avg=$(( $total / $count ))

echo $total
echo $avg
