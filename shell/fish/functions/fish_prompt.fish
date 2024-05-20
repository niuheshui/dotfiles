function fish_prompt
    set_color red 
    echo -n (basename $PWD)
    set_color normal
    set_color white
    echo -n ' ) '
    set_color normal
end
