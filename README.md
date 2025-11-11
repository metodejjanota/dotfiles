# Mac DEV dotfiles setup

- ?ollama lama-coder
- ?Karabiner-Elements
- ?SketchyBar
- ?tmux

## Homebrew
```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```zsh
brew tap FelixKratz/formulae
brew install git stow starship neofetch neovim nvm pnpm tree borders
brew list --formula
```

## Nvm
```zsh
mkdir -p ~/.nvm
nvm install --lts
nvm use --lts
node -v
```

## Setup
```zsh
rm -rf "$HOME/Projects"
git clone https://github.com/metodejjanota/dotfiles.git "$HOME/Projects/dotfiles"
```

```zsh
rm -rf "$HOME/.config"
mkdir -p "$HOME/.config"
```

```zsh
cd ~/Projects/dotfiles
stow --target="$HOME/.config" .config
stow --target="$HOME" zsh
```

## Casks
```zsh
brew install --cask github spotify wezterm signal nikitabobko/tap/aerospace mos zed hiddenbar zen obsidian discord appcleaner
brew list --cask
```

## Test
```zsh
ls -lah ~/.config
ls -l ~/.zshrc
```

[Homebrew formula search](https://formulae.brew.sh)
[stow tut](https://www.youtube.com/watch?v=y6XCebnB9gs&t=47s)
