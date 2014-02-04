" All vim settings that are only useful for Python go here.

" Highlight column 80 for python filescolumn 80 for python files.
au FileType python set colorcolumn=80

" Complete Python highlighting (numbers, exception and wrong whitespaces)
let python_highlight_all = 1
let pymode = 1


" =============================================================================
" ========= All kinds of quite useful Python shortcuts.
" ipdb right under current line.
nmap <leader>i<space> o<CR>################<CR># DEBUGGING START<CR>import sys<CR>__o_std__ = sys.stdout<CR>sys.stdout = sys.__stdout__<CR>from IPython.core.debugger import Tracer<CR>Tracer(colors="Linux")()<CR>sys.stdout = __o_std__<CR># DEBUGGING END<CR>################<CR><Esc>

" Shortcut to create the typical Python file header.
nmap <leader>p<space> ggO#!<Esc>:r !which env<CR>kJxxA python<CR># -*- coding: utf-8 -*-<CR>"""<CR>DESCRIPTION<CR><CR>:copyright:<CR>Lion Krischer (krischer@geophysik.uni-muenchen.de), <ESC>:r !date +\%Y<CR>kJo:license:<Esc><<oGNU Lesser General Public License, Version 3<CR>    (http://www.gnu.org/copyleft/lesser.html)<Esc>2<<o"""<Esc><<j
