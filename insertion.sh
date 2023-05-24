#!/bin/bash

function insertion() {
	local arr=("$@")
	local size=${#arr[@]}
	for ((i=1;i<size;i++));
	do
		key=${arr[$i]}
		j=$((i-1))
		while ((j>=0 && ${arr[$j]} > $key));
		do
			arr[$j+1]=${arr[$j]}
			j=$((j-1))
		done
		arr[$j+1]=$key
	done
	echo "${arr[@]}"
}