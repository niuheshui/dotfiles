tmpfile=/tmp/git-commit-message.txt
git add . && git commit --short > $tmpfile && git commit -F $tmpfile
