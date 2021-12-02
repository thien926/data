#!/bin/bash

for i in $*
do
	if [ $i -eq $i 2>/dev/null ]
	then
		echo $i
	fi
done

