# dotfiles
https://www.electricmonk.nl/log/2015/06/22/keep-your-home-dir-in-git-with-a-detached-working-directory/

## 0. Linux only (Debian/Ubuntu)
Homebrew on Linux needs a compiler, git and curl first (macOS gets them from Xcode CLT in step 1);
`trash-cli` backs the `rm` -> Trash function in `.zshrc`.
```
sudo apt install build-essential procps curl file git zsh trash-cli
chsh -s "$(which zsh)"
```

## 1. homebrew
https://brew.sh/ (also installs Xcode Command Line Tools, incl. git; on Linux into /home/linuxbrew/.linuxbrew)
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
(or whitelisted with `!<file>`, like `Brewfile.*`).

## 4. packages
One Brewfile per OS, `Brewfile.macos` and `Brewfile.linux`: each is a `brew bundle dump` snapshot of that machine
(dump rewrites the whole file, so one shared file would flip-flop between systems).
`.zshrc` points `HOMEBREW_BUNDLE_FILE` at the right one. Incl. npm globals and VS Code extensions.
```
brew bundle install --file ~/Brewfile.macos   # explicit: HOMEBREW_BUNDLE_FILE is set only once .zshrc is sourced
brew bundle install --file ~/Brewfile.linux
```
First Linux machine (no `Brewfile.linux` yet): start from the macOS list. brew bundle skips macOS-only casks by itself;
filter out the Mac cleaners it would still try (`mole` has no Linux bottle, `mac-cleaner-cli` is `os: darwin`).
`vscode` entries need VS Code (`code`) installed first. The next `brewup` writes and commits `Brewfile.linux`.
```
grep -vE '^(brew|npm) "(mole|mac-cleaner-cli)"' ~/Brewfile.macos | brew bundle install --file=-
```
Keep it up to date with `brewup`: update + upgrade --greedy + cleanup + dump this OS's Brewfile + auto-commit/push it.
A package added on one OS does not reach the other file until it is installed there too.
Shell start reminds when `brewup` hasn't run for 7+ days.

## inspiration
https://remysharp.com/2018/08/23/cli-improved \
https://www.wezm.net/technical/2019/10/useful-command-line-tools/
