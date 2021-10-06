# dotfiles
https://www.electricmonk.nl/log/2015/06/22/keep-your-home-dir-in-git-with-a-detached-working-directory/

## Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
## Oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
## ZSH-autosuggesions
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
## brew packages
```
brew install exa bat fzf trash fd ncdu node pure zsh-history-substring-search zsh-completions zsh-syntax-highlighting
```
# npm packages
```
npm install -g vtop tldr diff-so-fancy
```
# fira-code font
```
brew tap homebrew/cask-fonts && brew install --cask font-fira-code
```
