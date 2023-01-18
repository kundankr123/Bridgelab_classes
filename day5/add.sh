#!/bin/bash

read -p "enter the value of x: " x;# -p:prompt
read -p "enter the value of y: " y;

sum=$(($x+$y));
echo $sum;
