[Homebrew formula search](https://formulae.brew.sh)

./dotfiles/
stow

- mos
- wezterm
- Aerospace ? ya
- node, nvm
- git
- nvim
- zed
- ollama lama-coder
- ?Karabiner-Elements
- junky borders
- ?SketchyBar
- zsh with starhip
- ?tmux
- neofetch
- hiddenbar
- github

# Homebrew
```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```zsh
brew install git stow
```

# Setup
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

# Test
```zsh
ls -lah ~/.config
ls -l ~/.zshrc
```

[stow tut](https://www.youtube.com/watch?v=y6XCebnB9gs&t=47s)
