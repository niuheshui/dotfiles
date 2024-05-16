#!/usr/bin/env bash
msg=/tmp/git-commit-message.txt
remote=origin
branch=$(git branch | grep "\*" | sed "s/\*//" | xargs echo)

git add . 
git commit --short > $msg 
git commit -F $msg 
git push $remote $branch:$branch
