#!/bin/bash
<<<<<<< HEAD

#Initialize our digits and sum return variables
first_digit=0
second_digit=0
third_digit=0
fourth_digit=0
sum=0

#Create a for loop to generate each number between 1000 and 2000 inclusively
for i in {1000..2000}
do
    #Find the number of each digit spot within our i
    first_digit=$(( $i % 10 ))
    second_digit=$(( ($i / 10) % 10 ))
    third_digit=$(( ($i / 100) % 10 ))
    fourth_digit=$(( ($i / 1000) % 10 ))

    #Check each digit for a 0 or 1, if all true, we add i to our sum, if not we exit and move on
    if [[ ($first_digit -eq 1) || ($first_digit -eq 0) ]]; then
	if [[ ($second_digit -eq 1) || ($second_digit -eq 0) ]]; then
	    if [[ ($third_digit -eq 1) || ($third_digit -eq 0) ]]; then
		if [[ ($fourth_digit -eq 1) || ($fourth_digit -eq 0) ]]; then
		    sum=$(($sum + $i))
		fi
	    fi
	fi
    fi
done

#Display our sum
echo $sum
=======
>>>>>>> 3ab809d10e9f44d9282d83915dee70f0b3e97481
