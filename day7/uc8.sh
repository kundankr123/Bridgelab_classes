#!/bin/bash 

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
count=0;

function calwkghr(){
case $1 in
        $isft)
                emphr=8;;
        $ispt)
                emphr=5;;
        *)
                emphr=0;;
esac
echo $emphr;
}

while [[ $totalemphr -le $maxhrinmonth && $totalwkgdays -lt $noofwkgdays ]]
do
  emphr=$(calwkghr $((RANDOM%3)));

  totalemphr=$(($totalemphr+$emphr));
  if [ $totalemphr -gt $maxhrinmonth ]
  then
        totalemphr=$(($totalemphr-$emphr));
        break;
  fi
  salary=$(($perhrsal*$totalemphr));
  dailywage[((count++))]="$salary";
  totalsal=$(($totalsal+$salary));
  ((totalwkgdays++))
done
echo ${dailywage[@]}
echo $totalsal;
