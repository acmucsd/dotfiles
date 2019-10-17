""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax highlighting
syntax on
set nu
set bg=dark

set nocompatible " No compatibility necessary for mappings to work
set noerrorbells " turn off error sounds
set novisualbell " turn off error flash
au FocusLost * :wa " Save upon losing focus
" Fix autoindent not working
filetype on
filetype plugin on
filetype indent on

set ruler " Numbers at the bottom of the screen for column and line

" Keys, wrapping
set backspace=indent,eol,start " Set backspace to act like standard text editor
set whichwrap+=<,>,h,l " Set h l and arrow keys to wrap at end of line


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    Indentation Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Set tab to 2 spaces
set shiftwidth=2
set tabstop=2
set softtabstop=2

" Indentation
set autoindent " maintain indentation on newline
set smartindent " insert new indentation if needed

" Wrapping text
set textwidth=80 " Set length to wrap at 80
set linebreak    " Set wrap to insert linebreak

" Red column at 81st char
set colorcolumn=81 " Highlight the 81st column
match Error /\%81v.\+/ " Highlight text over 80 characters in red
set showmatch " Highlight matching brackets

" Prevents comments from being added on newline
set formatoptions=cro

"""" Search settings
set ignorecase " Set search to be case insensitive
set smartcase " Set search to be case sensitive when item has upper case letter


"""" Delete trailing white space on save
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.h,*.c,*.cpp,*.java,*.vimrc,*.txt,*.js,*.py,*.wiki,*.sh :call CleanExtraSpaces()
endif                          

" Save current file with sudo privileges
" https://www.cyberciti.biz/faq/vim-vi-text-editor-save-file-without-root-permission/
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
