#!/usr/bin/env bash
## For arithmetic comparition (())

var1=12
var2=13

if (($var1 == $var2)) ; then
     echo equal
elif (($var1 >  $var2)); then
     echo greater
else
    echo smalller
fi

str1=string1
str2=string2
if [ $str1 = $str2 ]; then
    echo same
else
    echo different
fi

