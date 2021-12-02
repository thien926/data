#!/bin/bash

for i in {1..20}
do
	temp=`echo "$i%2" | bc`
#	echo $temp
	if [ $temp -eq 0 ]
	then
		echo $i
	       	echo -n	
	fi
done





