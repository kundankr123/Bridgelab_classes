#!/bin/bash -x

counter=0;
fruits[((counter++))]="Apple";
fruits[((counter++))]="kiwi";
fruits[((counter++))]="banana";
echo ${fruits[@]};

