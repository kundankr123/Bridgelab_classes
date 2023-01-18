#!/bin/bash -x

isft=1;
ispt=2;
perhrsal=100;
randomCheck=$((RANDOM%3));

if [ $isft -eq $randomCheck ] # -eq:==
then
	emphr=8;
elif [ $ispt -eq $randomCheck ]
then
	emphr=5;
else
	emphr=0;
fi
salary=$(($emphr*$perhrsal));
echo $salary
