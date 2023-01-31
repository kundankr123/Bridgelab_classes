#!/bin/bash -x

count=0;

for ((i=0; i<=50; i++))
do 
  if [ $(($i%2)) -eq 0 ]
  then
	arr[((count++))]=$i;
  fi
done

echo ${arr[@]}

