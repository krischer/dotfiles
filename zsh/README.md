# zsh config

## zsh config files
* zshenv  - This file is sourced by all instances of Zsh, and thus, it should be kept as small as possible and should only define environment variables.
* zshrc   - This file is sourced by interactive shells. It should define aliases, functions, shell options, and key bindings.
* zlogout - This file is sourced by login shells during logout. It should be used for displaying messages and the deletion of files.

## zsh extensions
These are all loaded in the zshrc.

* oh-my-zsh                     -> git repo. Configuration framework for zsh. Very nice aliases, autocompletions, syntax highlighting, ...
