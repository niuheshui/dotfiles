#!/usr/bin/env bash
basic_dir=$(cd $(dirname $0); pwd)
echo $basic_dir
# $1: target
# $2: link_name
get_file_path() {
	pdir=$(cd -P $(dirname $1); pwd)
	fname=$(basename $1)
	echo "$pdir/$fname"
}
create_link() {
	if [ -e "$2" ]
	then
		rm -rf "$2"
	fi	
	ln -s $1 $2
} 

create_link "$basic_dir/vim/.vimrc" "$HOME/.vimrc"
create_link "$basic_dir/vim/.vim" "$HOME/.vim"
create_link "$basic_dir/tmux/.tmux.conf" "$HOME/.tmux.conf"
create_link "$basic_dir/git/.gitconfig" "$HOME/.gitconfig"
create_link "$basic_dir/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"

