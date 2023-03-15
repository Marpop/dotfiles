# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
    elixir
    zsh-history-substring-search
    zsh-completions
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Pure prompt
# https://github.com/sindresorhus/pure
autoload -U promptinit; promptinit
prompt pure

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# https://github.com/zyedidia/micro 
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="nano"
else
  export EDITOR="micro"
fi

# https://github.com/nvbn/thefuck
eval $(thefuck --alias)
# You can use whatever you want as an alias, like for Mondays:
eval $(thefuck --alias FUCK)

# aliases
ZSH_ALIAS_FINDER_AUTOMATIC=true # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/alias-finder
alias ls="exa" # https://github.com/ogham/exa
alias cat="bat" # https://github.com/sharkdp/bat
alias preview="fzf --preview 'bat --color \"always\" {}'" # https://github.com/junegunn/fzf 
alias top="gtop" # https://github.com/aksakalli/gtop 
alias find="fd" # https://github.com/sharkdp/fd
alias du="ncdu --color dark -rr -x --exclude .git" # https://github.com/rofl0r/ncdu 
alias df="command duf" # https://github.com/muesli/duf 
alias help="tldr" # https://github.com/tldr-pages/tldr 
alias rm="trash-put" # https://github.com/andreafrancia/trash-cli
alias c="clear" 
alias src="source ~/.zshrc"

# python
alias python="python3"
alias pip="pip3"

# home directory in git repository
alias dgit="git --git-dir ~/.dotfiles/.git --work-tree=$HOME"
