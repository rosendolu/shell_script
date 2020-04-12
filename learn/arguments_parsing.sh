#!/usr/bin/env bash
# flag vs switch 
# Flag is used for boolean values and its presence means True while Switch accepts an
# argument
POSITONAL=() # array
while [[ $# > 0 ]];do
    case "$1" in 
        -f|--flag)
        echo flag: $1
        shift # shift once since flag has no values
        ;;
        -s|--switch)
        echo switch $1 with value : $2
        shift 2  # shift twice  to bypass swtich and it`s value 
        ;;
        *) 
        POSITONAL+=("$s1")
        shift
        ;;
    esac
done

#set -- "$POSITONAL[@]}" # restore  positional arguments
