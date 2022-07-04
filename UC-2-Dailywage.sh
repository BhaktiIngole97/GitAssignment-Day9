#!/bin/bash -x

Present=1
randomcheck=$((RANDOM%2))

if [ $Present -eq $randomcheck ]
then
        empRatePerHr=20
        empHrs=8
        salary=$(($empHrs*$empRatePerHr))
else
        salary=0
fi
