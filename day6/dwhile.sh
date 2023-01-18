#!/bin/bash -x

count=1;

while [ $count != 7 ]
do
	echo $count;
	((count++));
done
