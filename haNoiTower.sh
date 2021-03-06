#!/bin/bash

fileInput="input.txt"
fileOutput="output.txt"

# doc file
while read line
do
	n=${line}
	break
	
done < ${fileInput}

# ham run 
# $1 = n, $2 = 'A', $3 = 'B', $4 = 'C'
function solve() {
	if [ $1 -eq 1 ]
	then
		echo "$2 => $4" >> ${fileOutput}
		return
	fi	
	
	local temp=`echo "$1-1" | bc`
	solve $temp $2 $4 $3
	solve 1 $2 $3 $4
	solve $temp $3 $2 $4
}

echo `rm -r ${fileOutput}`

#Kiem tra gia tri la so hay khong 
if [ $n -eq $n 2>/dev/null ]
then
	a="A"
	b="B"
	c="C"
	solve $n $a $b $c
else
	echo "" >> ${fileOutput}
	echo "$n khong la so"
fi


