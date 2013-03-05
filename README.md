# YAY! Dotfiles.

Repository of my personally used dotfiles mostly based around the triumvirate
of vim, zsh and tmux. Should work on OSX and Linux (tested on Debian).

Currently aims to be a development environment for Python, JavaScript, C, C++
and Go.

## Screenshot
![Result](https://raw.github.com/krischer/dotfiles/master/images/screenshot.png)

## Installation
### Requirements
* git
* tmux
* vim (with ruby bindings)
* zsh >= 4.3
* [Exuberant Ctags](http://ctags.sourceforge.net/) (not the ctags that ships with OSX)
* The terminal emulator has to use a patched font. Otherwise the vim-powerline and the tmux status line will not work properly. Get one from [here](https://github.com/Lokaltog/powerline-fonts).
* [Solarized color scheme](http://ethanschoonover.com/solarized) for the terminal emulator.
* For Python syntax checking: [flake8](https://pypi.python.org/pypi/flake8) (`pip install flake8`)
* For JavaScript support in vim: [jsctags](https://github.com/mozilla/doctorjs) and [JSHint](https://github.com/jshint/jshint/)

### Actual installation

It **has to be installed to ~/.dotfiles** as otherwise it is just a pain to deal
with relative path in all the different ways. This makes it possible to use
absolute paths and thus avoids all these pitfalls.

    git clone https://github.com/krischer/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    # The install script will init and update all submodules and symlink all
    # necessary files.
    sh install_dotfiles.sh
    # Optional: Change the default shell to zsh
    chsh -s `which zsh`


## Vim configuration

### General shortcuts

    ,sv<space>| (Source Vim) source (aka reload) the vimrc
    vap       | (Visual Around Paragraph) visually select this paragraph.
    ci"       | (Change Inside ") change inside the double quotes
    ci'       | (Change Inside ') change inside the single quotes
    cib       | (Change Inside Bracket) change inside brackets
    diw       | (Delete Inside Word) delete the current word
    gg=G      | Autoindent (=) the whole file

### How to use folding in vim

    zf#j      | Creates a fold from the cursor down # lines.
    zf/string | Creates a fold from the cursor to string .
    zj        | Moves the cursor to the next fold.
    zk        | Moves the cursor to the previous fold.
    zo        | Opens a fold at the cursor.
    zO        | Opens all folds at the cursor.
    zm        | Increases the foldlevel by one.
    zM        | Closes all open folds.
    zr        | Decreases the foldlevel by one.
    zR        | Decreases the foldlevel to zero -- all folds will be open.
    zd        | Deletes the fold at the cursor.
    zE        | Deletes all folds.
    [z        | Move to start of open fold.
    ]z        | Move to end of open fold.

(from [here](https://www.linux.com/learn/tutorials/442438-vim-tips-folding-fun))


### Regex in vim
    .  any character except new line
    \s whitespace character                      \S non-whitespace character
    \d digit                                     \D non-digit
    \x hex digit                                 \X non-hex digit
    \o octal digit                               \O non-octal digit
    \h head of word character (a-z,A-Z, and _)   \H non-head of word character
    \p printable character                       \P like \p, but excluding digits
    \w word character                            \W non-word character
    \a alphabetic character                      \A non-alphabetic character
    \l lowercase character                       \L non-lowercase character
    \u uppercase character                       \U non-uppercase character

    *      matches 0 or more of the preceding characters
    .*     matches everything including an empty line
    \+     matches 1 or more of the preceding characters
    \=     matches 0 or 1 more of the preceding characters
    \{n,m} matches from n to m of the precedingding characters
    \{n}   matches exactly n times of the preceding characterscters
    \{,m}  matches at most m (from 0 to m) of the preceding characters
    \{n,}  matches at least n of of the preceding characters
    where n and m are positive integers (>0)

(from [http://vimregex.com](http://vimregex.com) - also has much much more info on vim regex)


### EasyMotion plugin
Incredibly useful! Hard to describe how it works. Just try it and you will see.

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

### vim-surround
Selecting something in visual mode and then pressing __S__ and a char wraps the selection with the char.

    cs"'      | (Changes Surrounding " to ')
    ds'       | (Delete Surrounding ')
    ysiwb     | (Yank Surround Inside Word Bracket) Surround the current word with brackets.
    ysiw[     | (Yank Surround Inside Word [) Wrap word with square brackets and one space.
    ysiw]     | (Yank Surround Inside Word [) Wrap word with square brackets without spaces.
    ysiw<em>  | Surround word with <em>word</em>. Correctly closes the ending tag.

Special __ss__ always wraps the whole line ignoring leading whitespaces.

    yssb      | (Yank Surround Brackets) Surround the current line with brackets.

### NERDCommenter

    ,c<space> | Toggle commenting of line/visual selection
    ,cA       | Add comment at the end of the current line

### Syntastic

    ,s<space> | Toggle Syntastic. Useful as it is slow for very large files.
    ,er       | Toggle the Syntax error window. Off by default.

### CtrlP
MRU = Most Recently Used files

    Ctrl-p    | Invoke CtrlP

    If CtrlP is open:
    Ctrl-f    | Cycle modes (files, mru, buffers)
    Ctrl-d    | Filename search only, not full path
    Ctrl-r    | Switch to regex mode
    Ctrl-z    | Mark multiple files and then open them with Ctrl-o

### argtextobj
Provides an argument (a function argument in code) text-object, 'a'. Its quite
smart about different programming language.

    daa       | (Delete an argument)
    dia       | (Delete inner argument) - does not delete the following colon.
    cia       | (Change inner argument)


### vim-indent-guides

    ,ig       | Toggle indent guides. Off by default.


### ack.vim

    Usage:
       :Ack [options] {pattern} [{directory}] (use --python, --c to search only in specific files)

    In the quickfix window
    o         | to open (same as enter)
    go        | to preview file (open but maintain focus on ack.vim results)
    v         | to open in vertical split
    q         | to close the quickfix window

### Latex specific things

    ,fs       | (format sentence) Takes the current sentence, and indents all lines beloning to it.

### Go specific things
    :Fmt      | Run gofmt on the currently open buffer (Autoruns upon buffer saving anyways)

### Profiling vim's startup process

    vim --startuptime vim.log
