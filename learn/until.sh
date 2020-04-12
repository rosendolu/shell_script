#!/usr/bin/env bash


a1=3
until (( a <= 0)) ; do
    echo $a1
    (( a-- ))
done


str="string"
until [[ $str == "end" ]]; do
    echo start
    str=end
done
