function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

function rvm_version {
  ~/.rvm/bin/rvm-prompt i v
}

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

color_prompt=yes

PS1='$(parse_git_branch ) → '
export PS1='\[$(tput bold)\]\[$(tput setaf 4)\]\u:\w\[$(tput setaf 2)\] $(parse_git_branch ) \[$(tput sgr0)\]→ '

# ====== ALIASES / COMPLETION
source ~/.git-completion.bash

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls -h --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'

    alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# ssh agent forwarding
# ssh-agent && ssh-add

if [ -f ~/.bash_secrets ]; then
    . ~/.bash_secrets
fi

# BIT_NODE_TOKEN=1a022a77-8fc3-4984-821e-b09abeae0af5

# ========== PATH MADNESS
export PATH="$HOME:$HOME/bin:/usr/local/share/python:/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/share/python:$PATH"
export NODE_PATH="/usr/local/lib/node_modules"
export PATH="$HOME/Library/Android/sdk/platform-tools":$PATH

# brew
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

export NVM_DIR="/Users/ajsharp/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# use brew-installed python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# RVM
# THIS BE THE LAST ITEM!!
if [[ -s /Users/ajsharp/.rvm/scripts/rvm ]] ; then source /Users/ajsharp/.rvm/scripts/rvm ; fi

