# Environment variables
# 
# See:
#  - https://wiki.archlinux.org/title/XDG_Base_Directory
#  - https://github.com/matyama/configs/blob/main/.config/zsh/.zshenv
#
# May want to run `xdg-ninja` periodically to scan $HOME for any dotfiles
# that can safely be moved to XDG compliant directories.
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_BIN_HOME $HOME/.local/bin
set -gx XDG_STATE_HOME $HOME/.local/state
set -gx VISUAL helix
set -gx EDITOR $VISUAL
set -gx NAME "Sophie de Jong"
set -gx EMAIL "dejongmsophie@gmail.com"
set -gx DOTFILES_DIR $HOME/dev/dotfiles
set -gx RUSTUP_HOME $XDG_DATA_HOME/rustup
set -gx CARGO_HOME $XDG_DATA_HOME/cargo
set -gx CARGO_BIN $CARGO_HOME/bin
set -gx CARGO_TARGET_DIR $XDG_CACHE_HOME/cargo-target
set -gx CARGO_RELEASE_DIR $CARGO_TARGET_DIR/release
set -gx CARGO_ARTIFACTS_DIR $CARGO_RELEASE_DIR/artifacts
set -gx GOPATH $XDG_DATA_HOME/go
set -gx NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc
set -gx NODE_REPL_HISTORY $XDG_DATA_HOME/node_repl_history
set -gx DOTNET_CLI_HOME $XDG_DATA_HOME/dotnet
set -gx LESSHISTFILE $XDG_STATE_HOME/lesshst
# set -gx PYTHONSTARTUP $XDG_CONFIG_HOME/python/startup.py
set -gx PYTHON_HISTORY $XDG_CONFIG_HOME/python/python_history
set -gx GIT_CONFIG_GLOBAL $XDG_CONFIG_HOME/git/.gitconfig
set -gx XAUTHORITY $XDG_RUNTIME_DIR/Xauthority

# Aliases
alias ll 'ls -la'
alias la 'ls -a'
alias c wl-copy
alias p wl-paste
alias neofetch hyfetch
alias hx helix
alias files 'xdg-open .'

# Bindings
bind ctrl-h backward-kill-word

# Functions
function fish_greeting
    # hyfetch
end

function reload
    tmux source ~/.config/tmux/tmux.conf
    source ~/.config/fish/config.fish
    touch ~/.config/alacritty/alacritty.toml
end

function history
    builtin history --show-time='%F %T '
end

function backup --argument filename
    cp -r $filename $filename.bak
end

function tmp
    set date (date +%Y-%m-%d)

    if test (count $argv) -gt 0
        set dirname "$date-$argv"
    else
        set dirname "$date"
    end

    mkdir -p ~/tmp/scratch/$dirname
    cd ~/tmp/scratch/$dirname
end

function dotpush
    if not set -q DOTFILES_DIR
        echo "DOTFILES_DIR is not set. Please set it in config.fish."
        return 1
    end

    if not test -d $DOTFILES_DIR
        echo "DOTFILES_DIR does not point to a valid directory: $DOTFILES_DIR"
        return 1
    end

    pushd $DOTFILES_DIR >/dev/null

    # Stage all changes
    git add -A

    # Create a commit message 
    set message "Update dotfiles: (date)"

    git commit -m "$message"
    git status
    git push

    popd >/dev/null
end
