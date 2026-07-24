# Sophie's Dotfiles

This repository contains my configuration files (dotfiles) for various applications.

It also provides a few helper commands:

- `dotfiles-apply`: apply dotfiles to `~/.config` using GNU Stow
- `dotfiles-sync`: export machine-specific package lists and sync changes with git

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
dotfiles-apply
```

This will symlink the configuration files into `~/.config`.

Restart your terminal afterwards. You may have to run `chsh -s /usr/bin/fish` to make fish the default terminal.

## Installing packages (Arch Linux only)

Package lists are stored per machine:

```text
packages/
└── <hostname>/
    ├── pacman
    └── aur
```

Install official repository packages:

```bash
sudo pacman -S --needed - < packages/$(uname -n)/pacman
```

Install AUR packages (using yay):

```bash
yay -S --needed - < packages/$(uname -n)/aur
```

## Updating dotfiles

After making changes:

```fish
dotfiles-sync
```

This will:

1. Update the package list for the current machine
2. Stage changes
3. Commit changes
4. Pull remote changes with rebase
5. Push updates

To store packages under a different machine name:

```fish
dotfiles-sync laptop
```
