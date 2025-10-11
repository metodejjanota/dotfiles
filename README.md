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

```zsh
rm -rf "$HOME/dotfiles"
git clone https://github.com/metodejjanota/dotfiles.git "$HOME/dotfiles"

mkdir -p "$HOME/.config"

# Symlink "~/dotfiles/.zshrc" into "~/"
ln -sf "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"

# Symlink "~/dotfiles/.config" folder into "~/.config"
ln -sfn "$HOME/dotfiles/.config/" "$HOME/.config/"
```

[stow tut](https://www.youtube.com/watch?v=y6XCebnB9gs&t=47s)
