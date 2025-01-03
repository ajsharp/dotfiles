# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

###################
# ccache settings #
###################

# prepend ccache symlinks to PATH
# this was done to fix flutter ios builds
# See here for more: https://github.com/invertase/firestore-ios-sdk-frameworks/discussions/82
export PATH=/opt/homebrew/opt/ccache/libexec:$PATH

export CCACHE_SLOPPINESS=clang_index_store,file_stat_matches,include_file_ctime,include_file_mtime,ivfsoverlay,pch_defines,modules,system_headers,time_macros
export CCACHE_FILECLONE=true
export CCACHE_DEPEND=true
export CCACHE_INODECACHE=true

if [ -f "$HOME/.zshsecrets" ]; then
  source "$HOME/.zshsecrets"
fi

##################
# path mod stuff #
##################

export PATH=$HOME/go/bin:$HOME/bin:$PATH
# Add flutter to the path
export PATH="$(brew --prefix mysql-client@8.4)/bin:/Users/ajsharp/code/flutter/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Path to your oh-my-zsh installation.
export ZSH="/Users/ajsharp/.oh-my-zsh"

# prevent homebrew from automatically updating packages when installing things
export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1
export HOMEBREW_NO_AUTO_UPDATE=1

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ===== compiler options =====
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# needed for python postgres dep
export PKG_CONFIG_PATH=$(brew --prefix)/opt/mysql-client@8.4/lib/pkgconfig:/opt/homebrew/opt/mysql@8.0/lib/pkgconfig:$PKG_CONFIG_PATH
export DYLD_LIBRARY_PATH=/opt/homebrew/opt/postgresql/lib/postgresql@14:$(brew --prefix)/opt/mysql-client@8.4/lib/:/opt/homebrew/opt/mysql@8.0/lib:$DYLD_LIBRARY_PATH

ZSH_THEME=""
export LDFLAGS="-L/opt/homebrew/opt/openssl@3.4/lib -L/opt/homebrew/opt/mysql-client@8.4/lib -L/opt/homebrew/opt/mysql@8.0/lib"
export CFLAGS="-I/opt/homebrew/opt/openssl@3.4/include"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3.4/include -I/opt/homebrew/opt/mysql-client@8.4/include -I/opt/homebrew/opt/mysql@8.0/include"

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3.4)"


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ==== oh-my-zsh stuff =====
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

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
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  brew
  docker
  ruby
  bundler
  colorize
  colored-man-pages
  node
  npm
  yarn
  terraform
)

source ~/.bash_aliases

# User configuration
export EDITOR='cursor -w'
export BUNDLER_EDITOR='code'
export KUBE_EDITOR='code --wait'

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# rbenv
# eval "$(rbenv init - zsh)"

export PATH="$HOME/.rbenv/shims:${PATH}"

# pyenv
# if command -v pyenv 1>/dev/null 2>&1; then
#   eval "$(pyenv init -)"
# fi
export PATH="$HOME/.poetry/bin:$PATH"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

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

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi
# export SPACESHIP_KUBECTL_SHOW=true

# ====== GPG STUFF
# if [ -r ~/.zshrc ]; then echo 'export GPG_TTY=$(tty)' >> ~/.zshrc; \
# else echo 'export GPG_TTY=$(tty)' >> ~/.zprofile; fi
export GPG_TTY=$(tty)

source $ZSH/oh-my-zsh.sh
  # # Set pure ZSH as a prompt
autoload -U promptinit; promptinit
# prompt pure
prompt spaceship
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


. "$HOME/.cargo/env"

# bun completions
[ -s "/Users/ajsharp/.bun/_bun" ] && source "/Users/ajsharp/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ajsharp/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ajsharp/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ajsharp/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ajsharp/google-cloud-sdk/completion.zsh.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# eval "$(~/.local/bin/mise activate)"
