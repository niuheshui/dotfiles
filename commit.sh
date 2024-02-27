tmpfile=/tmp/git-commit-message.txt
remote=origin
remote_branch=main

git add . 
git commit --short > $tmpfile 
git commit -F $tmpfile 
git push $remote $remote_branch
