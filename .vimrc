"General editor settings
set tabstop=4
set nocompatible
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set ruler
set showcmd
set incsearch
set shellslash
set number
set relativenumber
set cino+=L0
set clipboard=unnamedplus
syntax on
filetype indent on
filetype off
setlocal indentkeys-=:
 
"keybindings for { completion, "jk" for escape, ctrl-a to select all
inoremap {<CR>  {<CR>}<Esc>O
inoremap {}     {}
imap jk         <Esc>
map <C-a> <esc>ggVG<CR>
set belloff=all
 
"Append template to new C++ files
autocmd BufNewFile *.cpp 0r ~/.vim/templates/alu.cpp
 
"Compile and run
"Note that this line requires the build.sh script!
autocmd filetype cpp nnoremap <F9> :w <bar> !build.sh %:r <CR> 
autocmd filetype cpp nnoremap <F10> :!./%:r<CR>
 
"Plugin setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'lervag/vimtex'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()
filetype plugin indent on

