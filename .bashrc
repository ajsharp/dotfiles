function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

function rvm_version {
  ~/.rvm/bin/rvm-prompt i v
}


color_prompt=yes

# PS1='\[\033[01;36m\]\h:\w\[\034[00m\] $(rvm_version ) $(parse_git_branch )\n→ '
PS1='$(rvm_version ) $(parse_git_branch ) → '
export PS1='\[$(tput bold)\]\[$(tput setaf 4)\]\u:\w\[$(tput setaf 2)\] $(rvm_version ) $(parse_git_branch ) \[$(tput sgr0)\]→ '


source ~/.git-completion.sh

# export EDITOR='mate -w'
export EDITOR='subl'

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

# Go
export GOROOT=$HOME/go
export GOOS=darwin
export GOARCH=amd64

if [ -f ~/.bash_secrets ]; then
    . ~/.bash_secrets
fi

export LOGGER=true

export PATH="./bin:$HOME:$HOME/bin:/usr/local/share/python:/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/share/python:$PATH"
export NODE_PATH="/usr/local/lib/node_modules"
export RBXOPT=-X18
# export CC=/usr/bin/gcc-4.2
# export CC=/usr/bin/gcc
export CLASSPATH="/usr/local/Cellar/clojure/1.3.0/clojure-1.3.0.jar:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar:/Users/ajsharp/bin/server-2.3.0.jar"
export MONGO_CONFIG_FILE=/usr/local/etc/mongod.conf

# brew
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# RVM
# THIS BE THE LAST ITEM!!
if [[ -s /Users/ajsharp/.rvm/scripts/rvm ]] ; then source /Users/ajsharp/.rvm/scripts/rvm ; fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
