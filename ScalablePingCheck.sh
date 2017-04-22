#!/bin/bash


for i in $(seq 1 3)
do
        echo check number: $i
	printf "\n"

	for j in google.com facebook.com
	do
		printf "\n"
		RTT=`sudo ping $j -c 1 | tail -3`
		echo $RTT | head -n 1
		echo Turn Around Time for $j for check $i is
		echo $RTT | tail -1 | awk -F'/' '{print $5}'
		printf "\n"
	done

        printf "\n"
        echo =========================================================
        printf "\n"

        if [ $i -eq 3 ]
                then
                echo The script will exit now, goodbye
                exit 1
        fi
	echo will ping again in 10 seconds
	printf "\n"
        sleep 10
done#!/bin/bash
