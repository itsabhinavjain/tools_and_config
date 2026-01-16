# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# ZSH_THEME=""

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
    git 
    zsh-autosuggestions 
    zsh-syntax-highlighting 
    zsh-navigation-tools
    )
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:/Applications/Sublime Text.app/Contents/SharedSupport/bin"
export PATH="$PATH:/Applications/pgAdmin 4.app/Contents/SharedSupport"
export PATH="$PATH:/opt/homebrew/opt/libpq/bin"
export PATH="$PATH:/opt/homebrew/opt/sqlite/bin"
export PATH="$PATH:/Users/abhinavjain/.local/bin"
export PATH="/Users/abhinavjain/.antigravity/antigravity/bin:$PATH"
export PATH="/Users/abhinavjain/.amp/bin:$PATH"

## History settings
export HISTFILESIZE=10000
export HISTSIZE=500

## BREW settings
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

## FZF options
export FZF_DEFAULT_OPTS='--height 80% --layout=reverse --border'
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C {} | head -200' ;;
    *)            fzf "$@" ;;
  esac
}

## Managing colors
export CLICOLOR=1
export LS_COLORS='no=00:fi=00:di=00;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.xml=00;31:'
# Fix the ugly green background color of o+w directories
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
# Color for manpages in less makes manpages a little easier to read
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'


##### USER PREFERENCES #####
export WORKSPACE_DIR="/Users/abhinavjain/Documents/02-Workspace-Common"
export PRODUCTIVITY_SCRIPTS_DIR="/Users/abhinavjain/Documents/21-Productivity-Scripts"
export LOCAL_SECRETS_DIR="/Users/abhinavjain/Documents/22-Environment-and-Secrets/local"

## Aliases 
### For common folders, commands, servers, shorcuts, scripts etc 

alias debugagent='uvx --refresh --from "langgraph-cli[inmem]" --with-editable . --python 3.11 langgraph dev'
alias ss="cd ${WORKSPACE_DIR}"
alias nn="nvim ."
alias ll="ls -ahl"
alias ls="ls -ahl"
alias kk="nvim ${PRODUCTIVITY_SCRIPTS_DIR}/00_common_commands.md" # Showcase the most commonly used commands

### Common Functions 
# - ee   : Manage import common local environment variables
# - eee  : Check what all environment variables are set 
# - mm   : Manage utility scripts
# - ff   : Find file by name
# - fff  : Find file by content 
# - dd   : Find directory 

# Function to manage the environment variables on my local terminal

ee() {
  if [[ -z "$LOCAL_SECRETS_DIR" ]]; then
    echo "PRODUCTIVITY_SCRIPTS_DIR environment variable is not set."
    return 1
  fi
  if [[ ! -d "$LOCAL_SECRETS_DIR" ]]; then
    echo "$PRODUCTIVITY_SCRIPTS_DIR directory not found."
    return 1
  fi

  local ORIGINAL_DIR="$PWD"

  # Change the directory to the PRODUCTIVITY_SCRIPTS_DIR folder. This is where all the scripts are run from. 
  cd "$LOCAL_SECRETS_DIR" || { echo "Failed to change directory to $LOCAL_SECRETS_DIR"; return 1; }
  
  # Search for the various scripts `.sh` and `.zsh` scripts in the folder 
  script=$(find . -type f \( -name "*.sh" -o -name "*.zsh" \) | fzf)
  
  if [[ -z "$script" ]]; then
    echo "No script selected."
    cd - 
    return 1
  fi

  echo "Selected script: $script"

  echo -n "Run $script? ([y]es/no): "
  read confirm

  case $confirm in
    y|Y|yes|YES|"")
        echo "Running: $script"

        # Run in the current shell 
        source ./"$script" 

        ;;
    *)
        echo "Script execution aborted."
        ;;
  esac

  cd "$ORIGINAL_DIR"
}


# Function to view all the current environment variables

eee() {
  set | less
}


# Function to call custom productivity scripts
# Usage : 
#   mm                 -> cd to the scripts directory, run the selected script and come back. 

mm() {
  if [[ -z "$PRODUCTIVITY_SCRIPTS_DIR" ]]; then
    echo "PRODUCTIVITY_SCRIPTS_DIR environment variable is not set."
    return 1
  fi
  if [[ ! -d "$PRODUCTIVITY_SCRIPTS_DIR" ]]; then
    echo "$PRODUCTIVITY_SCRIPTS_DIR directory not found."
    return 1
  fi

  local ORIGINAL_DIR="$PWD"

  # Change the directory to the PRODUCTIVITY_SCRIPTS_DIR folder. This is where all the scripts are run from. 
  cd "$PRODUCTIVITY_SCRIPTS_DIR" || { echo "Failed to change directory to $PRODUCTIVITY_SCRIPTS_DIR"; return 1; }
  
  # Search for the various scripts `.sh` and `.zsh` scripts in the folder 
  script=$(find . -type f \( -name "*.sh" -o -name "*.zsh" \) | fzf)
  
  if [[ -z "$script" ]]; then
    echo "No script selected."
    cd - 
    return 1
  fi

  echo "Selected script: $script"

  echo -n "Run $script? ([y]es/no): "
  read confirm

  case $confirm in
    y|Y|yes|YES|"")
        echo "Running: $script"

        # Run the script
        chmod +x "$script"
        ./"$script"

        ;;
    *)
        echo "Script execution aborted."
        ;;
  esac

  cd "$ORIGINAL_DIR"
}


# Fuzzy search directories and cd into selection
# Usage:
#   dd                 -> search from . with unlimited depth
#   dd /path           -> search from /path with unlimited depth
#   dd /path 3         -> search from /path up to depth 3

dd() {
  local root_dir="${1:-.}"
  local max_depth="$2"

  local find_cmd=(find "$root_dir")
  [[ -n "$max_depth" && "$max_depth" =~ '^[0-9]+$' ]] && \
    find_cmd+=(-maxdepth "$max_depth")

  local result key dir

  result="$(
    "${find_cmd[@]}" -type d \( \
      -name node_modules \
      -o -name venv \
      -o -name .git \
      -o -name .github \
      -o -name .vscode \
      -o -name __pycache__ \
    \) -prune -o -type d -print | \
    fzf \
      --expect=enter \
      --bind esc:abort \
      --preview 'tree -C {} | sed 50q'
  )" || return

  key="${result%%$'\n'*}"
  dir="${result#*$'\n'}"

  [[ "$key" != "enter" || -z "$dir" ]] && return

  unsetopt localoptions autocd 2>/dev/null
  builtin cd -- "$dir"
}
compdef _files dd


# Fuzzy search files by name and open on Enter
# Usage:
#   ff                 -> search from . with unlimited depth
#   ff /path           -> search from /path with unlimited depth
#   ff /path 3         -> search from /path up to depth 3

ff() {
  local root_dir="${1:-.}"
  local max_depth="$2"

  local find_cmd=(find "$root_dir")
  [[ -n "$max_depth" && "$max_depth" =~ '^[0-9]+$' ]] && \
    find_cmd+=(-maxdepth "$max_depth")

  local result key file

  result="$(
    "${find_cmd[@]}" \( \
      -path "*/node_modules" -o -path "*/node_modules/*" \
      -o -path "*/venv" -o -path "*/venv/*" \
      -o -path "*/.git" -o -path "*/.git/*" \
      -o -path "*/.github" -o -path "*/.github/*" \
      -o -path "*/.vscode" -o -path "*/.vscode/*" \
      -o -path "*/__pycache__" -o -path "*/__pycache__/*" \
    \) -prune -o -type f -print | \
    fzf \
      --expect=enter \
      --bind esc:abort \
      --preview 'sed 30q {}'
  )" || return

  key="${result%%$'\n'*}"
  file="${result#*$'\n'}"

  [[ "$key" != "enter" || -z "$file" ]] && return

  unsetopt localoptions autocd 2>/dev/null
  command open "$file"
}
compdef _files ff


# Fuzzy search files by CONTENT using ripgrep,
# then fuzzy-filter filenames with fzf
#
# Usage:
#   fg <search_text>
#   fg <search_text> /path
#   fg <search_text> /path 3

fg() {
  [[ -z "$1" ]] && {
    echo "Usage: fg <search_text> [root_dir] [max_depth]"
    return 1
  }

  local search_text="$1"
  local root_dir="${2:-.}"
  local max_depth="$3"

  local rg_cmd=(
    rg
    --files-with-matches
    --ignore-case
    --hidden
    --glob '!.git/*'
    --glob '!node_modules/*'
    --glob '!venv/*'
    --glob '!.github/*'
    --glob '!.vscode/*'
    --glob '!__pycache__/*'
  )

  [[ -n "$max_depth" && "$max_depth" =~ '^[0-9]+$' ]] && \
    rg_cmd+=(--max-depth "$max_depth")

  local result key file

  result="$(
    "${rg_cmd[@]}" -- "$search_text" "$root_dir" | \
    fzf \
      --expect=enter \
      --bind esc:abort \
      --preview "rg --color=always -n -i -- '$search_text' {} | sed 30q" \
      --preview-window=right:60% \
      --ansi
  )" || return

  key="${result%%$'\n'*}"
  file="${result#*$'\n'}"

  [[ "$key" != "enter" || -z "$file" ]] && return

  unsetopt localoptions autocd 2>/dev/null
  command open "$file"
}
compdef _files fg


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pnpm
export PNPM_HOME="/Users/abhinavjain/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Adding for using GraphViz
export CFLAGS="-I $(brew --prefix graphviz)/include"
if [ -f "/Users/abhinavjain/.config/fabric/fabric-bootstrap.inc" ]; then 
    . "/Users/abhinavjain/.config/fabric/fabric-bootstrap.inc"; 
fi

# Golang environment variables
export GOROOT=$(brew --prefix go)/libexec
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH

# Adding for uv and uvx 
eval "$(uv generate-shell-completion zsh)"
# uv: managing python and virtual environments 
# uvx: runs a tool without installing it e.g. ruff, markitdown etc

# # For using "pure" prompt https://github.com/sindresorhus/pure. This will overwrite the prompt settings from ohmyzsh
# fpath+=("$(brew --prefix)/share/zsh/site-functions")
# autoload -U promptinit; promptinit
# prompt pure

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc

# Load Angular CLI autocompletion.
source <(ng completion script)

# AWS ClI related 
export AWS_PAGER=""

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/abhinavjain/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

# Needed for Graphiti. See how to initiatise with a database name later in python 
export DEFAULT_DATABASE=neo4j 

