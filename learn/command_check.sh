#!/usr/bin/env bash
touch READE.md
if [[  $? != 0 ]];then
  echo "failed"
fi