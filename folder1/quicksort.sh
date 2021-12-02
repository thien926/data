#!/bin/bash

declare -a array

function quicksort(){
	local left=$1
	local right=$2
	local middle=`echo "($left+$right)/2" | bc`
	local x=${array[$middle]}
	
	local temp
	while [ $left -lt $right ]
	do
		while [ ${array[$left]} -lt $x ]
		do
			let left=$left+1
		done

		while [ ${array[$right]} -gt $x ]
		do
			let right=$right-1
		done

		if [ $left -le $right ]
		then
			let temp=${array[$left]}
			${array[$left]}=${array[$right]}
			${array[$right]}=$temp
		fi
	done

	if [ $left -lt $2 ]
	then
		quicksort $left $2
	fi

	if [ $right -gt $1 ]
	then
		quicksort $1 $right
	fi

}

index=1
for i in $*
do
#	echo $i
	array[$index]=$i
	let index=$index+1
done

let temp=${#array[@]}-1
quicksort 0 $temp
echo ${array[@]}






