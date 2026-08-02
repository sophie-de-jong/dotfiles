# Sophie's Dotfiles

This repository contains my configuration files (dotfiles) for various applications.

Currently includes configuration for:

- Alacritty
- Hyfetch/Fastfetch
- Fish shell
- Zoxide
- Git
- Helix
- Tmux (deprecated)

## Installation

### 1. Clone the repository

```bash
git clone https://github.com/sophie-de-jong/dotfiles
cd dotfiles
```

### 2. Install GNU Stow (if not installed)

```bash
sudo pacman -S stow
```

### 3. Apply dotfiles

```bash
stow -t ~/.config .
```

This will symlink the configuration files into `~/.config`.

Alternatively, apply only specific configurations:

```bash
stow -t ~/.config fish helix alacritty
```

Restart your terminal afterwards. You may have to run `chsh -s /usr/bin/fish` to make fish the default terminal.
