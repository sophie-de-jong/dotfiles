alias ll 'ls -l'
alias la 'ls -a'
alias c wl-copy
alias p wl-paste
alias neofetch hyfetch
alias hx helix
alias files 'xdg-open .'

bind ctrl-h backward-kill-word

# Add ~/.local/bin to path
fish_add_path ~/.local/bin

# Make fish show neofetch on startup
function fish_greeting
    # hyfetch
end

# Reload all config files
function reload
    source ~/.config/fish/config.fish
    source ~/.config/tmux/tmux.conf
    source ~/.config/alacritty/alacritty.toml
    source ~/.config/helix/config.toml
end

# Modify history command to show date and time
function history
    builtin history --show-time='%F %T '
end

# Backup command
function backup --argument filename
    cp -r $filename $filename.bak
end
