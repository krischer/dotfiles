" vim-indent-guides settings

" Thin indent lines
let g:indent_guides_guide_size = 1

" Do not show the first indent level which is obvious anyway.
let g:indent_guides_start_level = 2

" Pretty colors
let g:indent_guides_auto_colors = 0
" The first color is base2 for the solarized colorscheme and the second one
" slightly different
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=254
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=253
