# Dotfiles

This is my dotfiles, managed by using [Dotbot](https://github.com/anishathalye/dotbot#getting-started).

## Install

You can easily install all dotfiles by typing the following commands.

```bash
mkdir .dotfiles
cd .dotfiles
git clone https://github.com/yz-1209/Dotfiles.git
./install
```

## Miscellaneous

### Font
```bash
brew tap homebrew/cask-fonts
brew install font-noto-sans-mono
```

### Git

```bash
npm install -g git-removed-branches
git removed-branches
```

### Python

```bash
brew install pyenv
```

### Golang

```bash
brew install golangci-lint

go install github.com/segmentio/golines@latest
golines <file-path> -w --max-len=120 --ignore-generated

go install github.com/swaggo/swag/cmd/swag@latest
swag fmt .
```

### Command Line Tools

```bash
brew install tldr tree
```

### Desktop Application
- Input Source Pro
- Alfred
- [Monitor Control](https://github.com/MonitorControl/MonitorControl)
- Hammperspoon
- Kitty
- [Stats](https://github.com/exelban/stats)
- Cyberduck
- Snipaste
- TablePlus
- Postman
