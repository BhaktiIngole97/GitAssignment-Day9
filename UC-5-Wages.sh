#!/bin/bash -x

Parttime=1
Fulltime=2
totalsalary=0
empRateperhr=20
Numofworkingdays=20
for (( day=1; day<=$Numofworkingdays; day++ ))
do
	randomcheck=$((RANDOM%3))
	case $randomcheck in
			$Fulltime )
			 empHrs=8
			;;
			$Partime )
			 empHrs=4
			;;
			* )
			empHrs=0
			;;
    esac
	salary=$(($empHrs*$empRateperhr)) #dailywage
	totalsalary=$(($totalsalary+$salary)) #monthsalary
done
