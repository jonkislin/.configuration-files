colorscheme molokai
syntax enable
set tabstop=3
set expandtab
set number
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set showcmd
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <F7> :tabn<CR>
nnoremap <F6> :tabp<CR>
execute pathogen#infect()
