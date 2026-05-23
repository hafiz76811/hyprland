#!/bin/bash

status=$(git status &> /dev/null && true || false)
if $status; then
  echo -e "git branch : $(git branch)\n"

read -p "git add : " add
if [[ $add != "" ]]; then
  git add $add
  echo ""
else
  echo "error: no such file or directory"
  exit 1
fi

read -p "git commit : " commit
if [[ $commit != "" ]]; then
  git commit -m "$commit"
  echo ""
fi

read -p "git push? [Y/n] " push
if [[ $push == "y" || $push == "Y" ]]; then
  git push -u origin main
else
  echo "error: check your internet connection!"
  exit 1
fi

else
  echo "error: not a git repository"
  exit 1
fi
