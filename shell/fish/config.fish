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

export NEMU_HOME=$HOME/ics2020/nemu
export AM_HOME=$HOME/ics2020/abstract-machine
export REPO_DIR=$HOME/CS61B
