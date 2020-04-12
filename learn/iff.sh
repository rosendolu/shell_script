#!/usr/bin/env bash

var=5
(($var > 0)) && echo "greater than 0"

str=string
[ $str = "string" ] && echo same

[ $str != "string"  ] || echo different


echo "indexof string"
string="Hello World"
temp=${string%%"or"*} && indexOf=`echo ${string%%"or"*} | echo ${#temp}`
echo $temp
echo $indexOf

filtered=(`for i in ${myArray[@]} ; do echo $i; done | grep pattern`)

