#!/bin/bash -x

function add(){
a=$1;  #1st parameter
b=$2;  #2nd parameter
sum=$(($a+$b));
echo $sum;
}

add 3 5 #calling func
