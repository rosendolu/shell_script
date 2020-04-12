#!/bin/zsh
echo hello zsh first class
if [[ -f ~/.zshrc_alias ]];then
  . ~/.zshrc_alias
else 
  echo "alias file does not exits"
fi 