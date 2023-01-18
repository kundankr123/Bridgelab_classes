#!/bin/bash -x

isft=1;
ispt=2;
perhrsal=100;
empcheck=$((RANDOM%3));

case $empcheck in
	$isft)
		emphr=8;;
	$ispt)
		emphr=5;;
	*)
		emphr=0;;
esac

salary=$(($emphr*$perhrsal));
echo $salary
