# See:
#  - https://wiki.archlinux.org/title/XDG_Base_Directory
#  - https://github.com/matyama/configs/blob/main/.config/zsh/.zshenv
#
# May want to run `xdg-ninja` periodically to scan $HOME for any dotfiles
# that can safely be moved to XDG compliant directories.

# === XDG Base Directories ===
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_BIN_HOME $HOME/.local/bin
set -gx XDG_STATE_HOME $HOME/.local/state

# === Editor ===
set -gx VISUAL helix
set -gx EDITOR $VISUAL

# === Personal Info ===
set -gx NAME "Sophie de Jong"
set -gx EMAIL "dejongmsophie@gmail.com"

# === fzf ===
set -gx FZF_BASE $XDG_DATA_HOME/fzf

# === Rust ===
set -gx RUSTUP_HOME $XDG_DATA_HOME/rustup
set -gx CARGO_HOME $XDG_DATA_HOME/cargo
set -gx CARGO_BIN $CARGO_HOME/bin
set -gx CARGO_TARGET_DIR $XDG_CACHE_HOME/cargo-target
set -gx CARGO_RELEASE_DIR $CARGO_TARGET_DIR/release
set -gx CARGO_ARTIFACTS_DIR $CARGO_RELEASE_DIR/artifacts

# === Go ===
set -gx GOPATH $XDG_DATA_HOME/go

# === Node.js ===
set -gx NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc
set -gx NODE_REPL_HISTORY $XDG_DATA_HOME/node_repl_history

# === dotnet ===
set -gx DOTNET_CLI_HOME $XDG_DATA_HOME/dotnet

# === less ===
set -gx LESSHISTFILE $XDG_STATE_HOME/lesshst

# === Python ===
# set -gx PYTHONSTARTUP $XDG_CONFIG_HOME/python/startup.py
set -gx PYTHON_HISTORY $XDG_CONFIG_HOME/python/python_history

# === Git ===
set -gx GIT_CONFIG_GLOBAL $XDG_CONFIG_HOME/git/.gitconfig

# === X11 Auth ===
set -gx XAUTHORITY $XDG_RUNTIME_DIR/Xauthority
