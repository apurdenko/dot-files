#!/bin/bash

# setup bashrc.ext
grep "bashrc\.ext" ~/.bashrc || echo 'source ~/dotfiles/bashrc.ext' >> ~/.bashrc

# setup vim
[[ -f ~/.vimrc ]] && cp ~/.vimrc ~/.vimrc.orig
ln -sf ~/dotfiles/vimrc ~/.vimrc

# setup dircolors
ln -sf ~/dotfiles/dir_colors ~/.dir_colors

# setup tmux
ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf

# setup tmuxinator
ln -sf ~/dotfiles/tmuxinator  ~/.tmuxinator
