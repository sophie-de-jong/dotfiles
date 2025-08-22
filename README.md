# Sophie's Dotfiles

This repository contains my configuration files (dotfiles) for various applications. 
Currently includes configuration for:
- Alacritty
- Neofetch
- Fastfetch
- Hyfetch
- Fish shell
- Zoxide
- Git
- Helix
- Tmux
- XDG user directories and locale

## General Installation (Arch Linux with Pacman)

> ⚠️ Warning: Cloning into `~/.config` may overwrite your existing configuration files.

1. Clone the repository:
```console
git clone https://github.com/sophie-de-jong/dotfiles ~/.config
```
2. Run the install script:
```console
bash ~/.config/install
```

## Fish Theme/Prompt Config
1. Select a prompt
```console
fish_config prompt save astronaut
```
2. Select a theme
```console
fish_config theme save "Catppuccin Mocha"
```

## Fisher Installation (Fish Plugin Manager)
1. Install fisher using
```console
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
```
2. Install/Update all plugins
```console
fisher update
```

## TPM Installation (Tmux Plugin Manager)
1. Install TPM by cloning the repository
```console
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```
2. Reload Tmux
```console
reload
```

## Fzf Installation (Fuzzy Finding Tab Completion)
1. Install fzf by cloning the repository
```console
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.local/share/fzf
```
2. Run the install command
```console
~/.local/share/fzf/install --xdg --no-bash --no-zsh
```
