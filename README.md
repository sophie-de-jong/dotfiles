# Sophie's Dotfiles

This repository contains my configuration files (dotfiles) for various applications. 
Currently includes configuration for:
- Alacritty
- Hyfetch/Fastfetch
- Fish shell
- Zoxide
- Git
- Helix
- Tmux

## General Installation
Clone the repository:
```console
git clone https://github.com/sophie-de-jong/dotfiles
```

# Alacritty setup
1. Install and link
```console
sudo pacman -S alacritty
cd <dotfiles-directory>
ln -s alacritty ~/.config/alacritty
```
2. Optionally add alacritty shortcut to Gnome
```
Settings > Keyboard > View and Customize Shortcuts > Custom Shortcuts > "+"
```

# Hyfetch/Fastfetch setup
1. Install and link
```console
sudo pacman -S fastfetch hyfetch
cd <dotfiles-directory>
ln -s fastfetch ~/.config/fastfetch
ln -s hyfetch.json ~/.config/hyfetch.json
```

# Fish setup
1. Install and link
```console
sudo pacman -S fish
cd <dotfiles-directory>
ln -s fish ~/.config/fish
```
2. Install fisher
```console
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
fisher update
```
3. Set theme and prompt
```console
fish_config prompt save astronaut
fish_config theme save "Catppuccin Mocha"
```

# Zoxide setup
1. Install
```console
sudo pacman -S zoxide
```

# Git setup
1. Link
```console
ln -s git ~/.config/git
```

# Helix setup
1. Install and link
```console
sudo pacman -S helix
cd <dotfiles-directory>
ln -s helix ~/.config/helix
```

# Tmux setup
1. Install and link
```console
sudo pacman -S tmux
cd <dotfiles-directory>
ln -s tmux ~/.config/tmux
```
2. Install TPM and Catppuccin theme
```console
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
git clone -b v2.1.3 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
```
2. Reload Tmux
```console
reload
```
