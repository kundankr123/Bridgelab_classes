#!/bin/bash

ispresent=1;
randomCheck=$((RANDOM%2))

if [ $ispresent -eq $randomCheck ] # -eq:==
then
	echo "employee is present";
else
	echo "employee is absent";
fi
