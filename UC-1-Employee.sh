#!/bin/bash -x

Present=1
randomcheck=$((RANDOM%2))

if [ $Present -eq $randomcheck ]
then
         echo "Employee is Present"

         echo "Employee is absent"
fi
