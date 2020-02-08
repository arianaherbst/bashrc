" execute pathogen#infect()
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set tabstop=4
set expandtab
set shiftwidth=4
set number
set relativenumber
set autoindent
set smartindent
set hlsearch
set ignorecase
set smartcase
set wildmenu
set showmatch
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]
set cursorline
"set mouse=a
set smarttab
let mapleader = "-"
" set clipboard="unnamedplus"
noremap <leader>y "*y
noremap <leader>p "*p
noremap <leader>Y "+y
set path=.,/usr/include,,**
noremap <leader>P "+p
set tags=~/repos/tags

if &diff
   nnoremap :q :qa 
   set noro
endif
set nofixendofline
