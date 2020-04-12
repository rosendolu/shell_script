#!/usr/bin/env bash
## For arithmetic comparition (())
a=3
while  (( a > 0)) ; do
    echo "${a}";
    (( a-- ))
done

## For string comparition [[]] []
str="string"
while [ "$str" != "end" ]; do
    echo "start"
    str="end"
done
