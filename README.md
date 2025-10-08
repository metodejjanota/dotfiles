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

```zshif ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi && \
eval "$($(command -v brew) shellenv)" && \
brew install --cask nikitabobko/tap/aerospace spotify obsidian && \
brew install stow && \
git clone https://github.com/metodejjanota/dotfiles.git ~/dotfiles
```

[stow tut](https://www.youtube.com/watch?v=y6XCebnB9gs&t=47s)
