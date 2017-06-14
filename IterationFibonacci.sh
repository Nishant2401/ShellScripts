#!/bin/bash
echo "Enter the numberof terms : "
read n

declare a=0
declare b=1
declare number

if [ $n -eq 0 ]
	then
	exit 1

elif [ $n = 1 ]; then
	printf "\n0\n"

elif [ $n -eq 2 ]; then
	printf "\n0 \n1\n"

else
	printf "\n0 \n\n1\n"
	
	for (( i=1; i < $n-1; i++ )); 
	do
		num=$(( $a + $b ))
		printf "\n$num\n"
		a=$b
		b=$num
	done
fi