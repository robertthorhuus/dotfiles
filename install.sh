#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install clangd-10
repo=nerd-fonts
basedir=$HOME/Documents/private/repo
repourl=https://github.com/ryanoasis/"$repo".git
cd "$basedir" || exit
. git clone --quiet "$repourl" "$basedir"/"$repo"
cd "$repo" || exit
. install.sh

backup="$HOME"/backup
mkdir -p "$backup"
mv "$HOME"/.bashrc "$backup"
mv "$HOME"/.bash_aliases "$backup"
mv "$HOME"/.gitconfig "$backup"
mv "$HOME"/.gitignore "$backup"
mv "$HOME"/.vimrc "$backup"

ln -s "$basedir"/bash/bashrc.symlink "$HOME"/.bashrc
ln -s "$basedir"/bash/bash_aliases.symlink "$HOME"/.bash_aliases
ln -s "$basedir"/git/gitconfig.symlink "$HOME"/.bashrc
ln -s "$basedir"/git/gitignore.symlink "$HOME"/.bashrc
ln -s "$basedir"/vim/vimrc.symlink "$HOME"/.vimrc
