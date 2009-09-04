# rails aliases
alias ss='script/server'
alias sc='script/console'
alias scs='script/console --sandbox'
alias sg='script/generate'
alias spi='script/plugin install'
alias rdbm='rake db:migrate'
alias rdtp='rake db:test:prepare'

# gem aliases
alias sgi='sudo gem install'

# capistrano aliases
alias csdu='cap staging deploy:update'
alias cpdu='cap productiond deploy:update'

# git aliases
alias gst='git status'
alias gcom='git commit -a -m'
alias gsuba='git submodule add'
alias gd='git diff'
alias gpod='git push origin development'
alias gpom='git push origin master'
alias gplom='git pull origin master'
alias grb='git rebase'
alias gf='git fetch origin'
alias ga='git add'
alias gc='git commit'
alias gk='gitk --all'
alias gco='git checkout'

# apache aliases
alias reload_apache='sudo /etc/init.d/apache2 reload'
alias restart_apache='sudo /etc/init.d/apache2 restart'
alias start_apache='sudo /etc/init.d/apache2 start'

# aptitude aliases
alias aps='aptitude search'
alias api='sudo aptitude install'

# miscellaneous
alias gemdir='cd /usr/lib/ruby/gems/1.8/gems'
alias lsl='ls -l'
alias lsla='ls -la'
