#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20

totalEmpHr=0
totalWorkingDays=0
while [[ $totalEmpHrs -lt $maxRateInMonth &&
        $totalWorkingDays -lt $numOfWorkingDays ]]
do
 	((totalWorkingDays++))
	randomcheck=$((RANDOM%3))
	case $randomcheck in
				$isFullTime )
					empHrs=8
				;;
				$isPartTime )
					empHrs=4
				;;
				*)
					empHrs=0
				;;
	esac
	
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
done

totalsalary=$(($totalEmpHrs*$empRatePerHr))
	

