alias push_production_update='git push origin master && cap production deploy:update'

# git aliases
alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias gcom='git commit -a -m'
alias gpod='git push origin development'
alias gpom='git push origin master'
alias gplom='git pull origin master'
alias gplod='git pull origin development'
alias gd='git diff'
alias gk='gitx --all'
alias gai='git add -i'
alias grc='git rebase --continue'
alias flow='git flow'
alias gfo='git fetch origin'
alias gdc='git diff --cached'
alias gci='git commit -m'
alias gsl='git stash list'
alias gssp='git stash show -p'
alias gsp='git stash pop'

# rails aliases
alias sc='script/console'
alias spi='script/plugin install'
alias sg='script/generate'
alias rdbm='rake db:migrate'
alias rdtp='rake db:test:prepare'
alias prs='touch tmp/restart.txt'
alias restart_passenger='touch tmp/restart.txt'
alias scs='script/console --sandbox'
alias ss='script/server'
alias bns='bundle install'
alias sr='script/rails'
alias docs23='open ~/projects/rails/rails2.3docs/index.html'

# gem aliases
alias gsr='gem search -r'
alias sgi='sudo gem install'
alias gspec='gem exec autospec'
alias gin='gem install'
alias bspec='bundle exec spec'
alias rgm='rvm gemset'

# capistrano aliases
alias cpdu='cap production deploy:update'
alias csdu='cap staging deploy:update'

# apache aliases
# alias restart_apache='sudo /usr/sbin/apachectl -k restart'
alias resapache='sudo launchctl unload /System/Library/LaunchDaemons/org.apache.httpd.plist && sudo launchctl load /System/Library/LaunchDaemons/org.apache.httpd.plist'
alias start_apache='sudo /usr/sbin/apachectl -k start'

# other aliases
alias tf='tail -f'
alias passtart='touch tmp/restart.txt'
alias gemdir='cd /Library/Ruby/Gems/1.8/gems/'
alias cycle_mysql='sudo launchctl stop "com.mysql.mysqld"'
alias grp='grep -rn --color'

alias hs='hack && ship'

alias lsl='ls -l'
alias lsla='ls -la'
alias lslag='ls -la | grep'
alias be='bundle exec'
alias ps?='ps aux | grep'
alias launcher='launchctl'
# alias emacs='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient --no
alias h='heroku'
alias g='git'
alias br='bundle exec rspec'
alias f='foreman'
alias git=hub
alias srs='spring rspec'
