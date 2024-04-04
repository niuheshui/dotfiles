if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test -e ~/.aliases
    source ~/.aliases
end

if test -e ~/.environment
    source ~/.environment
end

function fish_greeting
    neofetch
end

fish_add_path -aP $HOME/.local/bin
