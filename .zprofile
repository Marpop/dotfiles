# Homebrew (PATH, MANPATH, HOMEBREW_PREFIX...)
for b in /opt/homebrew/bin/brew /home/linuxbrew/.linuxbrew/bin/brew; do # macOS, Linux
  [[ -x $b ]] && eval "$($b shellenv)" && break
done

# Added by Toolbox App
export PATH="$PATH:/Users/marpop/Library/Application Support/JetBrains/Toolbox/scripts"

# Hermes Agent command
case ":$PATH:" in *":$HOME/.local/bin:"*) ;; *) export PATH="$HOME/.local/bin:$PATH" ;; esac
