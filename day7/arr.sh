#!/bin/bash -x

fruits=(mango grape orange blueberry pineapple strawberry)

#echo ${fruits[@]}; #@/*---print all the array ele

#echo ${fruits[2]};  #find the ele at particular index

#echo ${#fruits{@}};  #find the length of the array

#echo ${fruits[@]:3:2} #to print the elements of array in range --[@]:staringindex:noofelements

#echo ${fruits[@]:3}   #to print the elements from gien index to last element

echo ${fruits[@]//mango/banana}; #to replace mango to banana

echo ${fruits[@]}

#to delete the elements
#echo ${fruits[@]/blueberry}; #to exclude the  elements from array
#unset fruit[2];


