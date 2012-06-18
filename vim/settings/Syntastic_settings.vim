" Do syntax checks when buffers are first loaded and upon saving buffers.
let g:syntastic_check_on_open=1

" Use the pylint checker. Has to be installed. Can be done via easy_install or
" pip.
let g:syntastic_python_checker = 'pylint'

" Toggle the error pane.
nmap <leader>er :Error<CR>
