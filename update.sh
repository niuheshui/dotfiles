#!/usr/bin/env bash
remote=origin

if [[ $# -gt 0 ]]
then
    remote=$1
fi

# branch=$(git branch | grep "\*" | sed "s/\*//" | xargs echo)
# branch=$(git branch | grep "\*" | cut -d ' ' -f2)
branch=$(git branch | grep '\*' | awk  '{ print $2 }')

echo "git pull ${remote} ${branch}"

git pull ${remote} ${branch}
