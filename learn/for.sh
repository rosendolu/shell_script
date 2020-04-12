#!/usr/bin/env bash

for((i=0;i<10;i++)); do
    echo $i
done

n=10
m=10
for((i=0;i<$n;i++)); do
    for((j=0;j<$m;j++)); do
        echo "$i $j"
    done
done


for item in {a..z}; do
    echo "$item"
done

for item in {A..Z}; do
    echo "$item"
done

for item in {0..10}; do
    echo "$item"
done

for col in `ls -al | awk '{ print $1":"$2 }'`; do
    echo "$col" 
done
