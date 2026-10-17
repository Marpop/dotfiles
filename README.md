# dotfiles
https://www.electricmonk.nl/log/2015/06/22/keep-your-home-dir-in-git-with-a-detached-working-directory/
```
git clone --no-checkout git@github.com:Marpop/dotfiles.git ~/.dotfiles
alias dgit='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'
dgit reset --hard
dgit config status.showUntrackedFiles no
```
`~/.gitignore` ignores everything (`*`); files are tracked explicitly with `dgit add -f <file>`
(or whitelisted with `!<file>`, like `Brewfile`).

## oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## zsh plugins
https://github.com/zsh-users/zsh-history-substring-search \
https://github.com/zsh-users/zsh-completion \
https://github.com/zsh-users/zsh-syntax-highlighting \
https://github.com/zsh-users/zsh-autosuggestions \
https://github.com/gusaiani/elixir-oh-my-zsh
```
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/gusaiani/elixir-oh-my-zsh.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/elixir
```

## homebrew
https://brew.sh/
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## packages
https://remysharp.com/2018/08/23/cli-improved \
https://www.wezm.net/technical/2019/10/useful-command-line-tools/ \
https://github.com/dandavison/delta \
https://github.com/junegunn/fzf#using-homebrew

```
brew bundle install   # installs everything from ~/Brewfile (HOMEBREW_BUNDLE_FILE)
bru                   # update + upgrade --greedy + cleanup + dump Brewfile + auto-commit/push it
                      # shell start reminds when bru hasn't run for 7+ dayspip3 install trash-cli
sudo npm install -g pure-prompt gtop tld
```
