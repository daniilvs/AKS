#!/bin/bash

. ./bubble.sh
. ./quick.sh
. ./insertion.sh
read -a arr
if [[ "-t" != "$1" ]]; 
then
	echo "error"
fi
if [[ "bubble" == "$2" ]]; 
then
	sorted_arr1=$(bubble "${arr[@]}")
	echo "$sorted_arr1"
fi
if [[ "quick" == "$2" ]]; 
then
	sorted_arr2=$(quick "${arr[@]}")
	echo "$sorted_arr2"
fi
if [[ "insertion" == "$2" ]]; 
then
	sorted_arr3=$(insertion "${arr[@]}")
	echo "$sorted_arr3"
fi