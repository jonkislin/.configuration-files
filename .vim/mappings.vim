" Toggle NERDTree
noremap <leader><leader> :NERDTreeToggle<CR>

" If lines are selected, format them.  Otherwise format everything
vnoremap <leader>l :FormatLines<CR>   " if lines are selected, format them
nnoremap <leader>l :FormatCode<CR>    " otherwise, format all lines

" Open FZF
noremap <C-p> :FZF<CR>

" Run Ack without opening the first result
noremap <leader>a :Ack!<space>
