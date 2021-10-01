#!/bin/bash
#
# curl -L raw..githubusercontent.com/robertthorhuus/dotfiles/master/bootstrap.sh | sh
# or
# wget -qO- raw..githubusercontent.com/robertthorhuus/dotfiles/master/bootstrap.sh | sh
{ # This ensures the entire script is downloaded.

  basedir=$HOME/.dotfiles
  repourl=https://github.com/robertthorhuus/dotfiles.git

  if ! command -v git >/dev/null ; then
    echo "Error: Git is not installed!"
    exit 1
  fi

  if [ -d "$basedir/.git" ]; then
    cd "$basedir" || exit
    git pull --quiet --rebase origin master
  else
    rm -rf "$basedir"
    git clone --quiet --filter=blob:none "$repourl" "$basedir"
  fi

  cd "$basedir" || exit
  . setup.sh -t build

} # This ensures the entire script is downloaded.

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
cd "$HOME"
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
