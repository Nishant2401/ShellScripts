#!/bin/bash
for (( i=1; i<=5; i++ )) 
do
for (( s=5; s>=i; s-- ))
do
echo -n  " "
done
for (( j=1; j<=i;  j++ ))
do
echo -n " ."
done
echo "" 
done
###### Second stage ######################
for (( i=5; i>=1; i-- ))
do
for (( s=i; s<=5; s++ ))
do
echo -n " "
done
for (( j=1; j<=i;  j++ ))
do
echo -n " ."
done
echo ""
done
echo -e "\nAin't this beautiful?!"
echo -e "\nHello from Jenkins. Update for new commit."
echo -e "\nHello from Jenkins. Update for new commit -2"
echo -e "\nHello from Jenkins. Update for new commit -3"
echo -e "\nHello from Jenkins. Update for new commit -4"
