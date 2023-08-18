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
	rm -rf "$2"
	ln -s $1 $2
} 

create_link "$basic_dir/vim/.vimrc" "$HOME/.vimrc"
create_link "$basic_dir/vim/.vim" "$HOME/.vim"
create_link "$basic_dir/tmux/.tmux.conf" "$HOME/.tmux.conf"
create_link "$basic_dir/git/.gitconfig" "$HOME/.gitconfig"
create_link "$basic_dir/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"
create_link "$basic_dir/emacs/.emacs" "$HOME/.emacs"
create_link "$basic_dir/emacs/.emacs.d" "$HOME/.emacs.d"
create_link "$basic_dir/shell/.aliases" "$HOME/.aliases"
create_link "$basic_dir/shell/zsh/.oh-my-zsh" "$HOME/.oh-my-zsh"
create_link "$basic_dir/shell/zsh/.zshrc" "$HOME/.zshrc"
create_link "$basic_dir/shell/zsh/custom" "$HOME/custom"


