#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

function getWorkingHours()
{
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
}

function getEmpWage()
{
	echo $(($totalEmpHr*$empRatePerHr))
}

while [[ $totalEmpHr -lt $maxRateInMonth &&
      $totalWorkingDays -lt $numOfWorkingDays ]]

do
	((totalWorkingDays++))
	randomcheck=$((RANDOM%3))
	getWorkingHours $randomcheck
	totalEmpHr=$(($totalEmpHr+$empHrs))
	dailyWages[$totalWorkingDays]=$(($empHrs*$empRatePerHr))
done

totalsalary="$( getEmpWage $totalEmpHr )"
echo ${dailyWages[@]}

				
