if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test ~/.aliases
    source ~/.aliases
end

function fish_greeting
    date
    echo "hello ($USER@$hostname)"
    neofetch
end

fish_add_path -aP $HOME/.local/bin

export no_proxy=localhost,127.0.0.1,::1
export NO_PROXY=localhost,127.0.0.1,::1

export all_proxy=socks://127.0.0.1:7890/
export ALL_PROXY=socks://127.0.0.1:7890/

export http_proxy=http://127.0.0.1:7890/
export HTTP_PROXY=http://127.0.0.1:7890/

export https_proxy=http://127.0.0.1:7890/
export HTTPS_PROXY=http://127.0.0.1:7890/


export NEMU_HOME=$HOME/ics2020/nemu
export AM_HOME=$HOME/ics2020/abstract-machine
export REPO_DIR=$HOME/CS61B
