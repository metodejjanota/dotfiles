./dotfiles/
stow

mos
ghosty
Aerospace

```zsh
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$($(command -v brew) shellenv)"
brew install --cask nikitabobko/tap/aerospace spotify obsidian
```
