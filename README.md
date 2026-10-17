# dotfiles
https://www.electricmonk.nl/log/2015/06/22/keep-your-home-dir-in-git-with-a-detached-working-directory/

## 1. homebrew
https://brew.sh/ (also installs Xcode Command Line Tools, incl. git)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## 2. oh-my-zsh
Before the dotfiles, so `.zshrc` (`source $ZSH/oh-my-zsh.sh`) works as soon as it's checked out;
the template `.zshrc` it creates gets overwritten by `dgit reset --hard` in the next step.
```
RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## 3. dotfiles
```
git clone --no-checkout git@github.com:Marpop/dotfiles.git ~/.dotfiles
alias dgit='git --git-dir ~/.dotfiles/.git --work-tree=$HOME'
dgit reset --hard
dgit config status.showUntrackedFiles no
exec zsh -l   # reload with the checked-out .zprofile (brew shellenv) and .zshrc
```
`~/.gitignore` ignores everything (`*`); files are tracked explicitly with `dgit add -f <file>`
(or whitelisted with `!<file>`, like `Brewfile`).

## 4. packages
```
brew bundle install --file ~/Brewfile   # explicit: HOMEBREW_BUNDLE_FILE is set only once .zshrc is sourced; incl. npm globals
```
Keep it up to date with `brewup`: update + upgrade --greedy + cleanup + dump Brewfile + auto-commit/push it.
Shell start reminds when `brewup` hasn't run for 7+ days.

## inspiration
https://remysharp.com/2018/08/23/cli-improved \
https://www.wezm.net/technical/2019/10/useful-command-line-tools/
