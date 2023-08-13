# tty终端更改字体命令
# setfont /usr/share/consolefonts/CyrAsia-Terminus32x16.psf.gz

# \[ \] 包裹的内容不会计算到终端打印字符的长度中 
# 把颜色转移序列都加上就不会出现错误 
git_branch() {
    branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
    if [ "$branch" != "" ] 
    then
        echo -e "($branch)"
    else
        echo ""
    fi  
}
# 背景色为白色 前景色为黑色(字体颜色)tmux中可以生效
# PS1='\[\e]11;#ffffff\a\e]10;#000000\a\]\[\e[38;5;196;1m\]\$\[\e[0m\] '
PS1="\[\e[01;34m\][\w]\[\e[0m\] \[\e[01;32m\]\$(git_branch)\[\e[0m\]\n\[\e[01;31m\]\$\[\e[0m\] "
