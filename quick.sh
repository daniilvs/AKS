#!/bin/bash

function quick() {
	local arr=("$@")
	local size=${#arr[@]}
	if (( size<2 ));
	then
		echo "${arr[@]}"
		return
	fi
	local pivot=${arr[0]}
	local i=()
	local j=()
	for x in "${arr[@]:1}";
	do
		if (( x<=pivot ));
		then
			i+=("$x")
		else
			j+=("$x")
		fi
	done
	left=($(quick "${i[@]}"))
	right=($(quick "${j[@]}"))
	echo "${left[@]} $pivot ${right[@]}"
}