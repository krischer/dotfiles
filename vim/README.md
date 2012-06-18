# Lion's vim configuration

## Useful keyboard combinations

### EasyMotion plugin
Incredibly useful!

    ;;w       | Beginning of word forward
    ;;W       | Beginning of WORD forward
    ;;f{char} | Find {char} to the right
    ;;F{char} | Find {char} to the left
    ;;t{char} | Till before the {char} to the right
    ;;T{char} | Till after the {char} to the left
    ;;w       | Beginning of word forward
    ;;W       | Beginning of WORD forward
    ;;b       | Beginning of word backward
    ;;B       | Beginning of WORD backward
    ;;e       | End of word forward
    ;;E       | End of WORD forward
    ;;ge      | End of word backward
    ;;gE      | End of WORD backward
    ;;j       | Line downward
    ;;k       | Line upward
    ;;n       | Jump to latest "/" or "?" forward
    ;;N       | Jump to latest "/" or "?" backward

### NERDCommenter

    ,c<space> | Toggle commenting of line/visual selection
    ,cA       | Add comment at the end of the current line

### Syntastic
    ,er       | Toggle the Syntax error window. Off by default.

## General tips

Profiling vim's startup process
    vim --startuptime vim.log
