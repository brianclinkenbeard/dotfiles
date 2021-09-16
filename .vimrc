" vim-plug
call plug#begin()

" apprentice theme
Plug 'romainl/Apprentice'
" palenight theme
Plug 'drewtempelmeyer/palenight.vim'
" onedark theme
Plug 'joshdick/onedark.vim'
" gnupg
Plug 'jamessan/vim-gnupg'
" language server
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
" flake8
Plug 'nvie/vim-flake8'

call plug#end()

set nocompatible

" let jk change to normal mode
inoremap jk <ESC>

" ignore case unless capitals are included
set ignorecase
set smartcase

" line numbers
set number

" tab width of 4
set shiftwidth=4
set tabstop=4

" default shell type as POSIX
let g:is_posix = 1

" true colors
"if (has("termguicolors"))
"  set termguicolors
"endif

" colorscheme
colorscheme onedark
