#!/bin/sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Force a Vundle install of all plugins
vim -c ":PluginInstall" -c ":qa"
