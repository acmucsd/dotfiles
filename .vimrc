""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Style Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax highlighting
syntax on
set nu
set bg=dark


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" "   Indentation Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indentation Settings
filetype plugin indent on
"set smartindent
set cindent
set expandtab

" REGULAR SETTINGS
set tabstop=4
set shiftwidth=4

" UCSD RETARD SETTINGS
"set shiftwidth=2
"set tabstop=2
"set softtabstop=2

" Save current file with sudo privileges
" https://www.cyberciti.biz/faq/vim-vi-text-editor-save-file-without-root-permission/
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
