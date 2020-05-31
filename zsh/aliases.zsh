# Away from keyboard
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Docker
alias dco='docker-compose'
alias dcb='docker-compose build'
alias dce='docker-compose exec'
alias dcps='docker-compose ps'
alias dcrm='docker-compose rm'
alias dcr='docker-compose run --rm'
alias dcrb='docker-compose run web /bin/bash'
alias dcrw='docker-compose run --rm web'
alias dcu='docker-compose up'
alias dcud='docker-compose up -d'
alias dcd='docker-compose down'
alias dck='docker-compose kill'
alias dcl='docker-compose logs'
alias dclf='docker-compose logs -f'
alias dcm="docker-compose run web rake db:migrate"
alias dsp='docker system prune'
alias dsp='docker system prune'

# DNS Flush
alias dnsflush='sudo killall -HUP mDNSResponder'

# Directory Listings
alias ls="ls -lhF"
alias ll="ls -lhaF"

# Directory Shortcuts
alias cdd="cd ~/Downloads"
alias cdp="cd ~/Projects"

# Git
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gau='git add -A'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gc='git commit -v'
alias gcam='git commit -am'
alias gcl='git clone'
alias gco='git checkout'
alias gcm='git checkout master'
alias gd='git diff'
alias gf='git fetch'
alias gpl='git pull origin $(current_branch)'
alias gps='git push'
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias gpsf='git push --force-with-lease'
alias grb='git rebase'
alias grbi='git rebase -i'
alias grbm='git rebase master'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbs='git rebase --skip'
alias gs='git status'
alias gss='git status -s'
alias gm='git merge --no-ff'
alias gmt='git mergetool --no-prompt'
alias grm='git rm'
alias gsts='git stash save'
alias gsta='git stash apply'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gstsh='git stash show --text'
alias gstall='git stash --all'

# Git Standup
alias standup="git standup"

# History
alias hs='history | grep'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias iplocal="ipconfig getifaddr en0"

# Look Busy!
alias busy="cat /dev/urandom | hexdump -C | grep \"34 32\""

# Keep Display Alive
alias kda="caffeinate -u &"
alias kdas="pkill -9 caffeinate"

# Show/Hide hidden files in finder
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'
