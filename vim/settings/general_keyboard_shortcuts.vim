" This file specifies general keyboard mappings.

" Apply all .vimrc changes.
nmap <leader>sv<space> :source $MYVIMRC<CR>

" hex mode on with <leader>hex and off with <leader>nhex
map <leader>hex :%!xxd<CR>
map <leader>nhex :%!xxd -r<CR>

" This unsets the "last search pattern" register by hitting space. This means
" that if hlsearch (search term highlighting) is set all search terms will be
" highlighted. Now pressing space will remove the current highlighting as it
" can be quite distracting.
nnoremap <silent><Space> :nohlsearch<CR>
