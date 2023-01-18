#!/bin/bash -x

isft=1;
ispt=2;
perhrsal=100;
noofwkgdays=20;
totalsal=0;
noofwkgdays=20;
maxhrinmonth=30;

totalemphr=0;
#totalwkghr=0;
totalwkgdays=0;

while [[ $totalemphr -le $maxhrinmonth && $totalwkgdays -lt $noofwkgdays ]]
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
  totalemphr=$(($totalemphr+$emphr));
  if [ $totalemphr -gt $maxhrinmonth ]
  then
	totalemphr=$(($totalemphr-$emphr));
	break;
  fi
  salary=$(($perhrsal*$totalemphr));
  totalsal=$(($totalsal+$salary));
  ((totalwkgdays++))
done
echo $totalsal;
