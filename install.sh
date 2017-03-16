#!/bin/bash

echo 'Step 1: Backup old vimrc and vim'
for file in $HOME/.vimrc $HOME/.vim
do
	if [ -e ${file} ]
	then
		echo "Rename ${file} to ${file}-backup"
		mv ${file} ${file}-backup
    fi
done

echo "Step 2: Link .vimrc and .vim";
for file in vimrc vim
do
	ln -s `pwd`/${file} $HOME/.${file}
    echo "Soft link $HOME/.${file}"
done
