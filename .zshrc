# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
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
    macos
    history-substring-search
    alias-finder
    common-aliases
    docker
    docker-compose
    dotenv
    extract
    jsontools
    vscode
    web-search
    sudo
    web-search
    copypath
    copyfile
    copybuffer
    history
    fzf
    kubectl
    elixir
    zsh-completions
    zsh-autosuggestions
    zsh-syntax-highlighting  # must be the last plugin
    )

source $ZSH/oh-my-zsh.sh

# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/alias-finder
ZSH_ALIAS_FINDER_AUTOMATIC=true

# Pure prompt
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

# aliases
# ------------------------------------------------------------------------------
# https://remysharp.com/2018/08/23/cli-improved
# https://www.wezm.net/technical/2019/10/useful-command-line-tools/
alias cat="bat"
# https://github.com/junegunn/fzf#using-homebrew
alias preview="fzf --preview 'bat --color \"always\" {}'"
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"
alias top="gtop"
alias find="fd"
alias du="ncdu --color dark -rr -x --exclude .git"
alias df="command duf"
alias help="tldr"
alias rm="trash"
alias ls="exa"
alias c="clear"

# python/django
alias python="python3"
alias pip="pip3"
alias mm="make manage"
alias docker_django="dcr --rm django"
alias django_test="docker_django pytest"
alias django_format="docker_django black . && docker_django isort --atomic . "
alias django_lint="docker_django mypy . && docker_django flake8 . && docker_django pylint config/ apps/"
alias django_all="django_test && django_format && django_lint"
alias django_manage="docker_django python manage.py"
alias django_migrations="django_manage makemigrations && django_manage migrate"

eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
eval $(thefuck --alias FUCK)

# home directory in git repository
alias dgit="git --git-dir ~/.dotfiles/.git --work-tree=$HOME"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"
