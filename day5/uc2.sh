#!/bin/bash -x

ispresent=1;
randomCheck=$((RANDOM%2))

if [ $ispresent -eq $randomCheck ] # -eq:==
then
	perhrsal=100;
	emphr=8;
	salary=$(($emphr*$perhrsal))
else
	salary=0
fi
echo $salary
