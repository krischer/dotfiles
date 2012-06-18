" All vim settings that are only useful for Python go here.


" Complete Python highlighting (numbers, exception and wrong whitespaces)
let python_highlight_all = 1


" =============================================================================
" ========= All kinds of quite useful Python shortcuts.
" Run the current file with Python
nmap <leader>r<space> :call RunVimTmuxCommand("bash ~/.vim/misc_scripts/run_py " . bufname("%"))<CR>

" ipdb right under current line.
nmap <leader>i<space> ofrom IPython.core.debugger import Tracer; Tracer()()<Esc>

" Shortcut to create the typical Python file header.
nmap <leader>p<space> ggO#!<Esc>:r !which env<CR>kJxxA python<CR># -*- coding: utf-8 -*-<CR>"""<CR>DESCRIPTION<CR><CR>:copyright:<CR>Lion Krischer (krischer@geophysik.uni-muenchen.de), <ESC>:r !date +\%Y<CR>kJo:license:<Esc><<oGNU Lesser General Public License, Version 3<CR>    (http://www.gnu.org/copyleft/lesser.html)<Esc>2<<o"""<Esc><<j
