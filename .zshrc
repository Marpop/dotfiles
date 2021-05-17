# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/marpop/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# https://github.com/denysdovhan/spaceship-prompt/blob/master/docs/Options.md
# SPACESHIP_TIME_SHOW="false"
# SPACESHIP_KUBECONTEXT_SHOW="false"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    brew
    git
    iterm2
    osx
    )

source $ZSH/oh-my-zsh.sh

# Pure promt
# ------------------------------------------------------------------------------
# https://github.com/sindresorhus/pure
autoload -U promptinit; promptinit
prompt pure

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="nano"
else
  export EDITOR="micro"
fi

# zsh extensions https://github.com/zsh-users
# ------------------------------------------------------------------------------
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY="match_prev_cmd"

# asdf
# ------------------------------------------------------------------------------
# https://github.com/asdf-vm/asdf/issues/428
export ASDF_DIR=$(brew --prefix asdf)

# apple chip
# ------------------------------------------------------------------------------
arm() {
  arch -x86_64 $@
}

# aliases
# ------------------------------------------------------------------------------
# Make some of the file manipulation programs verbose
alias mv="mv -v"
alias rm="rm -vi"
alias cp="cp -v"
# Clear the screen of your clutter
alias c="clear"
alias cl="clear;ls;pwd"
# GREP Motifications
alias grep="grep --color"
alias grepp="grep -P --color"
# Json tools (pipe unformatted to these to nicely format the JSON)
alias json="python -m json.tool"
alias jsonf="python -m json.tool"

# https://remysharp.com/2018/08/23/cli-improved
alias cat="bat"
alias preview="fzf --preview 'bat --color \"always\" {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"
alias top="htop"
alias find="fd"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias help="tldr"

# python pip
alias python="python3"
alias pip="pip3"

# home directory in git repository
alias dgit="git --git-dir ~/.dotfiles/.git --work-tree=$HOME"
