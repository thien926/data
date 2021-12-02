#!/bin/bash
num=$1

while [ $num -gt 0 ]
do
	tmp=$(($num%2))$tmp && num=$(($num/2))
done

echo $tmp
