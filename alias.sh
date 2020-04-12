#!/bin/bash
echo "search .zshrc_alias file"

if [[ -f ~/.zshrc_alias ]];
    then
        . ~/.zshrc_alias
else
    echo "alias file does not exits"
fi;
