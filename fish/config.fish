if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test ~/.aliases
    source ~/.aliases
end

export NEMU_HOME=$HOME/ics2020/nemu
export AM_HOME=$HOME/ics2020/abstract-machine
