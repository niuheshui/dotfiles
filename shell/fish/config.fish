if status is-interactive
    # Commands to run in interactive sessions can go here
end

if test ~/.aliases
    source ~/.aliases
end

if test ~/.environment
    source ~/.environment
end

function fish_greeting
    date
    echo "hello ($USER@$hostname)"
    neofetch
end

fish_add_path -aP $HOME/.local/bin
