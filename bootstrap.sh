#!/bin/bash

mkdir -p ~/old_dotfiles
mv ~/.bashrc ~/old_dotfiles
mv ~/.emacs.el ~/old_dotfiles
mv ~/.fonts ~/old_dotfiles
mv ~/.gitconfig ~/old_dotfiles
mv ~/.inputrc ~/old_dotfiles
mv ~/.vimrc ~/old_dotfiles

ln -s $(pwd)/bashrc ~/.bashrc
ln -s $(pwd)/emacs.el ~/.emacs.el
ln -s $(pwd)/fonts ~/.fonts
ln -s $(pwd)/gitconfig ~/.gitconfig
ln -s $(pwd)/inputrc ~/.inputrc
ln -s $(pwd)/vimrc ~/.vimrc
