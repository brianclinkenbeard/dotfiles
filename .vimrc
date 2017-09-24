" vim-plug
call plug#begin()

" apprentice theme
Plug 'romainl/Apprentice'
" gnupg
Plug 'jamessan/vim-gnupg'

call plug#end()

set nocompatible

" fix backspace
"set backspace=indent,eol,start

" let jk change to normal mode
inoremap jk <ESC>

" allow alt + arrow keys to switch between documents
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" do not match case in searches unless capitals are included
set ignorecase
set smartcase

" add line numbers
set number

" shorten tab width
set shiftwidth=4
set tabstop=4

" two space tabs for cs1b assignments
"autocmd BufNewFile,BufRead ~/Documents/School/cs1b/*.{cpp,h} set tabstop=2 shiftwidth=2 expandtab

" set theme to apprentice
colors apprentice
