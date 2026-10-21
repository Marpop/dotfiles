# Homebrew (PATH, MANPATH, HOMEBREW_PREFIX...)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Added by Toolbox App
export PATH="$PATH:/Users/marpop/Library/Application Support/JetBrains/Toolbox/scripts"

# Hermes Agent command
case ":$PATH:" in *":$HOME/.local/bin:"*) ;; *) export PATH="$HOME/.local/bin:$PATH" ;; esac
