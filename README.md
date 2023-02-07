# Dotfiles

This is my personal dotfiles, managed by using [Dotbot](https://github.com/anishathalye/dotbot#getting-started).

## Install

Intall all the dotfiles:

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

### Power10k
```bash
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
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
brew install cheat tree jq curl

# intall tldr
brew install node
npm install -g tldr
```

### Desktop Application
- Alfred
- [Monitor Control](https://github.com/MonitorControl/MonitorControl)
- Hammperspoon
- Kitty
- [Stats](https://github.com/exelban/stats)
- Cyberduck
- Snipaste
- TablePlus
- Postman
