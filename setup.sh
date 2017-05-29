#!/bin/bash

dir_base=$(cd $(dirname $0);pwd)
cd $dir_base

list_ln="
bashrc
vimrc
tmux.conf
"

for file in $list_ln; do
	ln -sf $dir_base/$file ~/.$file
done

echo
echo " >> Setup vim"
vim +NeoBundleInstall +qall
