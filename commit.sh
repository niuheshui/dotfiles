tmpfile=/tmp/git-commit-message.txt
remote=origin
branch=$(git branch | grep "\*" | sed "s/\*//" | xargs echo)

git add . 
git commit --short > $tmpfile 
git commit -F $tmpfile 
git push $remote $branch:$branch
