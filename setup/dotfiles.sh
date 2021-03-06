#!/bin/bash
sudo -v

files=(.agignore .bash_aliases .bash_profile .bashrc .bundle .csscomb.json
        .gemrc .gitconfig .gitignore_global .hushlogin .powconfig .profile
        .slate .tmux.conf .vim .vimrc .zshrc)
dir="$PWD/"

for i in ${files[@]}; do
  sudo rm -rf ~/${i} && ln -s ${dir}${i} ~/${i}
done
