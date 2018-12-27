" THIS FILE LOADS THE .VIMRC FILE INSTEAD OF USING THE NEOVIM DEFAULT
set runtimepath^=/.vim runtimepath+=~/.vim/after

let &packpath = &runtimepath

source ~/.vimrc
