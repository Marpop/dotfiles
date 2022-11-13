# dotfiles
https://www.electricmonk.nl/log/2015/06/22/keep-your-home-dir-in-git-with-a-detached-working-directory/

```
git clone git@github.com:Marpop/dotfiles.git ./.dotfiles
alias dgit='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'
dgit reset --hard
```

### Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
### oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### brew packages
```
brew install exa bat fzf trash fd ncdu gtop node pure zsh-history-substring-search zsh-autosuggestions zsh-completions zsh-syntax-highlighting micro thefuck elixir npm fig 
```
### packages
```
npm install -g vtop tldr diff-so-fancy
```
### fira-code font
```
brew tap homebrew/cask-fonts && brew install --cask font-fira-code
```
### Elixir plugin
```
cd ~/.oh-my-zsh/custom/plugins && git clone https://github.com/gusaiani/elixir-oh-my-zsh.git elixir
```
