" On OSX use the preview app to view postscript and pdf files.
let g:Tex_ViewRule_pdf = '/Applications/Preview.app'
let g:Tex_ViewRule_ps = '/Applications/Preview.app'

" Automatically compile multiple times if needed for changes indices or bibtex
" or ...
let g:Tex_MultipleCompileFormats = 'pdf'

autocmd FileType tex nnoremap <leader>fs (j>>gq)
