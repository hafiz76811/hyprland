#!/bin/bash

status=$(git status &> /dev/null && true || false)
if true; then
  echo -e "git branch : $(git branch)\n"
else
  exit 1
fi

read -p "git add : " add
if [[ $add != "" ]]; then
  git add $add
  echo ""
fi

read -p "git commit : " commit
if [[ $commit != "" ]]; then
  git commit -m $commit
  echo ""
fi

read -p "git push [Y/n] " push
if [[ $push = "y" || $push = "Y" ]]; then
  git push -u origin main
fi