#!/bin/bash


for i in $(seq 1 7)

do
	printf "\n"
	echo check number: $i
	printf "\n"

	RTT=`sudo ping omniti.com -c 1 | tail -3`
	echo $RTT | head -n 1
	echo Turn Around Time for omniti.com for check $i is
	echo $RTT | tail -1 | awk -F'/' '{print $5}'
	printf "\n"
	
	RTT2=`sudo ping surge.omniti.com -c 1 | tail -3`
	echo $RTT2 | head -n 1
	echo Turn Around Time for surge.omniti.com for check $i is
	echo $RTT2 | tail -1 | awk -F'/' '{print $5}'
	printf "\n"

	RTT3=`sudo ping ansible-dk.org -c 1 | tail -3`
        echo $RTT3 | head -n 1
        echo Turn Around Time for ansible-dk.org for check $i is
        echo $RTT3 | tail -1 | awk -F'/' '{print $5}'
        printf "\n"

	echo will ping again in 10 seconds
	printf "\n"
	echo =========================================================
	printf "\n"
	
	if [ $i -eq 7 ]
		then
		echo The script will exit now, goodbye
		exit 1
	fi
	
	sleep 10
done
