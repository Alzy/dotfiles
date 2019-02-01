" AUTO INSTALL VIM PLUG
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



" VIM PLUG
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'

Plug 'tpope/vim-sleuth'
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'

" polyglot holds most language syntax definitions.
Plug 'sheerun/vim-polyglot'

Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'

Plug 'morhetz/gruvbox'
Plug 'patstockwell/vim-monokai-tasty'

call plug#end()



"
" THEME AND COLOR SETTINGS
"
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty 
let g:lightline = {
	\ 'colorscheme': 'monokai_tasty',
	\ }
set background=dark
" this fixes the weird highlighting bug that happens when using tmux:
set t_ut=0



"
" FUNCTIONAL IMPROVEMENTS
" 

" map 'jk' as ESC
:imap jk <Esc>
:imap kj <Esc>
:imap jj <Esc>
:imap kk <Esc>

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch



"
" PLUGIN SETTINGS
"

" NERDCOMMENTER
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims=1

" Enable trimming of trailing whitespace when uncommenting
let g:nerdtrimtrailingwhitespace = 1
