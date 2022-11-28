# dotfiles
https://www.electricmonk.nl/log/2015/06/22/keep-your-home-dir-in-git-with-a-detached-working-directory/

```
git clone git@github.com:Marpop/dotfiles.git ./.dotfiles
alias dgit='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'
dgit reset --hard
```
## macOS
### Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
### brew packages
```
brew install exa bat fzf trash fd ncdu gtop node pure micro thefuck elixir npm fig 
```
### fira-code font
```
brew tap homebrew/cask-fonts && brew install --cask font-fira-code
```

## common
### oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### zsh plugins
```
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search && \
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions && \
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-syntax-highlighting && \
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions && \
git clone https://github.com/gusaiani/elixir-oh-my-zsh.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/elixir
```
### npm packages
```
npm install -g vtop tldr diff-so-fancy
```

