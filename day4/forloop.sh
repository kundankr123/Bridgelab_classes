#!/bin/bash -x

for file in `ls *.txt`
do
	dir=`echo $file | awk -F . '{print $1}'`;
	if [ -d $dir ]; #-d : directory/ cond: if folder exist
	then
		rm -R $dir;
	fi
	mkdir $dir;
	cp $file $dir;
done
