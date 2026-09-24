# Environment variables
# 
# See:
#  - https://wiki.archlinux.org/title/XDG_Base_Directory
#  - https://github.com/matyama/configs/blob/main/.config/zsh/.zshenv
#
# May want to run `xdg-ninja` periodically to scan $HOME for any dotfiles
# that can safely be moved to XDG compliant directories.
set -gx NAME "Sophie de Jong"
set -gx EMAIL "dejongmsophie@gmail.com"
set -gx VISUAL helix
set -gx EDITOR $VISUAL

set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state
set -gx XDG_BIN_HOME $HOME/.local/bin

set -gx RUSTUP_HOME $XDG_DATA_HOME/rustup
set -gx CARGO_HOME $XDG_DATA_HOME/cargo
set -gx GOPATH $XDG_DATA_HOME/go
set -gx NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc
set -gx NODE_REPL_HISTORY $XDG_DATA_HOME/node_repl_history
set -gx DOTNET_CLI_HOME $XDG_DATA_HOME/dotnet
set -gx LESSHISTFILE $XDG_STATE_HOME/lesshst
set -gx PYTHON_HISTORY $XDG_CONFIG_HOME/python/python_history
set -gx HISTFILE $XDG_STATE_HOME/bash/history
set -gx GIT_CONFIG_GLOBAL $XDG_CONFIG_HOME/git/config
set -gx GNUPGHOME $XDG_DATA_HOME/gnupg
set -gx XAUTHORITY $XDG_RUNTIME_DIR/Xauthority
set -gx CUDA_CACHE_PATH $XDG_CACHE_HOME/nv
set -gx EZA_ICONS_AUTO 1

# PATH entries
fish_add_path $XDG_BIN_HOME

# Aliases
alias ls eza
alias ll 'eza -la'
alias cat 'bat --paging=never'

# Abbreviations
abbr --add c wl-copy
abbr --add p wl-paste
abbr --add g git
abbr --add r source $XDG_CONFIG_HOME/fish/config.fish
abbr --add hx helix
abbr --add cg cargo

# Bindings
bind ctrl-h backward-kill-word
