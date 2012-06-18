" NERDTree specific settings

" Start NERDTree with vim
autocmd vimenter * NERDTree
" Put the cursor in the main window and not the NERDTree window
autocmd VimEnter * wincmd p

" Close vim if the only buffer left open is a NERDTree.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Toggle the NERD Tree
nmap <leader>t<space> :NERDTreeToggle<CR>
