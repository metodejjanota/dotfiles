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
# 1️⃣ Install Homebrew if it's not already installed
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# 2️⃣ Load Homebrew environment into the current shell
eval "$($(command -v brew) shellenv)"

# 3️⃣ Install apps and CLI tools (as regular user)
brew install --cask nikitabobko/tap/aerospace spotify obsidian
brew install stow git

# 4️⃣ Clone your dotfiles repository if it doesn't exist
if [ ! -d "$HOME/.dotfiles" ]; then
  git clone https://github.com/metodejjanota/dotfiles.git "$HOME/.dotfiles"
fi

# 5️⃣ Use stow to create symlinks for configs
cd "$HOME/.dotfiles"

# Link everything inside .config to ~/.config/
stow --target="$HOME/.config" .config

# Link .zshrc to ~/
stow --target="$HOME" .zshrc
```

[stow tut](https://www.youtube.com/watch?v=y6XCebnB9gs&t=47s)
