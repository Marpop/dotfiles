# dotfiles
https://www.electricmonk.nl/log/2015/06/22/keep-your-home-dir-in-git-with-a-detached-working-directory/

```
git clone git@github.com:Marpop/dotfiles.git ./.dotfiles
alias dgit='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'
dgit reset --hard
```
## oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
## zsh plugins
https://github.com/zsh-users/zsh-history-substring-search
https://github.com/zsh-users/zsh-completion
https://github.com/zsh-users/zsh-syntax-highlighting
https://github.com/zsh-users/zsh-autosuggestions
https://github.com/gusaiani/elixir-oh-my-zsh
```
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search 
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-syntax-highlighting 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 
git clone https://github.com/gusaiani/elixir-oh-my-zsh.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/elixir
```
## Homebrew (macOS)
https://brew.sh/
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
## packages
https://github.com/ogham/exa
https://github.com/sharkdp/bat
https://github.com/junegunn/fzf
https://github.com/sharkdp/fd
https://github.com/rofl0r/ncdu
https://github.com/zyedidia/micro
https://github.com/nvbn/thefuck
https://elixir-lang.org/install.html
https://dandavison.github.io/delta/installation.html
https://github.com/andreafrancia/trash-cli
### macOS
```
brew install exa bat fzf fd ncdu micro thefuck elixir
pip3 install trash-cli
```
### Ubuntu
```
sudo apt install exa bat fzf fd-find ncdu micro elixir 
pip3 install thefuck trash-cli
```
## Git Delta
https://github.com/dandavison/delta
### macOS
```
brew install delta
```
### Ubuntu
https://dandavison.github.io/delta/installation.html

## LazyGit
https://github.com/jesseduffield/lazygit
### macOS
```
brew install lazygit
```
### Ubuntu
```
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*') 
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz" 
tar xf lazygit.tar.gz lazygit 
sudo install lazygit /usr/local/bin
```
## LazyDocker
https://github.com/jesseduffield/lazydocker
### macOS
```
brew install lazydocker
```
### Ubuntu
```
LAZYDOCKER_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazydocker/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
curl -Lo lazydocker.tar.gz "https://github.com/jesseduffield/lazydocker/releases/latest/download/lazydocker_${LAZYDOCKER_VERSION}_Linux_x86_64.tar.gz"
mkdir lazydocker-temp
tar xf lazydocker.tar.gz -C lazydocker-temp
sudo mv lazydocker-temp/lazydocker /usr/local/bin
lazydocker --version
rm -rf lazydocker.tar.gz lazydocker-temp
```

## Node
### macOS
```
brew install node
```
### Ubuntu
https://github.com/nodesource/distributions#debinstall

## NPM packages
https://github.com/sindresorhus/pure
https://github.com/aksakalli/gtop
https://github.com/tldr-pages/tldr
```
sudo npm install -g pure-prompt gtop tldr 
```

