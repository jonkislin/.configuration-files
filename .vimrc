filetype plugin on
filetype indent on

" Update files when modified outside vim
set autoread

" Keep cursor centered when scrolling
set so=7

" Set wild menu
set wildmenu

" Ignore compiled objects
set wildignore=*.o,*~,*.pyc

" Show position
set ruler

" Hide abandoned buffers
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=10

" COLORS
colorscheme molokai
syntax enable

" Set utf8
set encoding=utf8

" set unix as the standard file type
set ffs=unix,dos,mac

" no backups
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

set smarttab

" 4 space tab
set shiftwidth=4
set tabstop=4

" Set list characters
set lcs=tab:\|\—,eol:$,extends:>,precedes:<,nbsp:·

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" Always show the status line
set laststatus=2

" Format the status line
" default status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
"set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

"spell check
nnoremap <F3> :set spell! spell?<CR>

"whitespace
nnoremap <F4> :set list! list?<CR>

map <F10> :ConqueTermSplit bash <CR> 

set number
set cursorline
set showcmd
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <F7> :tabn<CR>
nnoremap <F6> :tabp<CR>
execute pathogen#infect()
