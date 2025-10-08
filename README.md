[Homebrew formula search](https://formulae.brew.sh)

./dotfiles/
stow

- mos
- ghosty
- Aerospace
- node
- git
- nvim
- zed
- ollama lama-coder

```zsh
if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi
eval "$($(command -v brew) shellenv)"
brew install --cask nikitabobko/tap/aerospace spotify obsidian
```
