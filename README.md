# Sophie's Dotfiles

This repository contains my configuration files (dotfiles) for various applications. It also has the following functionality:
- automatically syncing the repo (`dfsync`)
- automatically generate package lists (`paclist` + `aurlist`)
- automatically symlink everything into `~/.config` (`stow`)

Currently includes configuration for:
- Alacritty
- Hyfetch/Fastfetch
- Fish shell
- Zoxide
- Git
- Helix
- Tmux

## Installation
### 1. Clone the repository:
```bash
git clone https://github.com/sophie-de-jong/dotfiles
```

### 2. Link to `~/.config`
```bash
cd dotfiles
stow -t ~/.config .
```
Then reload the terminal window

### 3. Install packages (Arch Linux only)
Official repository pacakges:
```bash
sudo pacman -S --needed - < paclist
```
AUR packages (yay)
```bash
yay -S --needed - < aurlist
```

### 4. Shell setup (Fish)
```bash
sudo pacman -S fish
chsh -s /usr/bin/fish
```
Install fisher:
```bash
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source
fisher update
```
(Optional) Set theme/prompt:
```bash
fish_config prompt save astronaut
fish_config theme save "Catppuccin Mocha"
```

### 5. Terminal multiplexer setup (Tmux)
```bash
sudo pacman -S tmux
```
Install TPM and Catppuccin theme
```bash
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
git clone -b v2.1.3 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
```
Install packages and reload Tmux
```bash
<prefix> + I
reload
```
