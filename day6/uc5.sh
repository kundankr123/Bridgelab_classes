#!/bin/bash -x

isft=1;
ispt=2;
perhrsal=100;
#empcheck=$((RANDOM%3));
noofwkgdays=21;
totalsal=0;

for((day=1; day<=$noofwkgdays; day++))
do
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
  totalsal=$(($totalsal+$salary));
done

echo $totalsal;
