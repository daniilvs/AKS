#!/bin/bash

function bubble() {
    local arr=("$@")
	local size=${#arr[@]}
    for (( i=0;i<size;i++ ));
    do
        for (( j=0;j<size-i-1;j++ ));
        do
            if (( ${arr[$j]} > ${arr[$j+1]} ))
            then
                tmp=${arr[$j]}
                arr[$j]=${arr[$j+1]}
                arr[$j+1]=$tmp
            fi
        done
    done
    echo "${arr[@]}"
}