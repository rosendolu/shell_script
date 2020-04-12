#!/usr/bin/env bash
var1=1
#var2
echo $var1
: "var2 ${var2:=default}"
echo $var2
echo "var3 ${var3:=default}"