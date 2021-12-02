#!/bin/bash
max=0
for i in `cat data.txt` 
do
	if [ $i -gt $max ] 
	then
		max=$i
	fi
done

echo "Max: $max"
