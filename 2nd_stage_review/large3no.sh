#!/bin/bash -x

read -p "Enter first num " a;
read -p "enter second num " b;
read -p "enter third num " c;

if [[ $a -gt $b && $a -gt $c ]]
then
	echo "$a is largest."
elif [[ $b -gt $a && $b -gt $c ]]
then
	echo "$b is largest. "
else
	echo "$c is largest."
fi

