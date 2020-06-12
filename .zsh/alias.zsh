# -----------------------------
# Alias
# -----------------------------

### Global
alias -g G='| grep --color=auto'
alias -g H='| head'
alias -g T='| tail'
alias -g L='| less -R'

### Base
alias c='clear'
alias mv='mv -i'
alias cp='cp -i'
alias m='micro'

### ls
alias l='ls -F'
alias la='ls -AF'
alias lt='ls -tAF'

### Git
alias g='git'
alias ga='git add'
alias gap='git add -p'
alias gd='git diff'
alias gds='git diff --staged'
alias gs='git status'
alias gp='git push'
alias gpom='git push origin master'
alias gpu='git pull'
alias gb='git branch'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gf='git fetch'
alias gc='git commit'
alias gr='git rebase'

### npm
alias nis='npm install --save'
alias nu='npm uninstall'
alias nr='npm run'
alias nrd='npm run dev'
alias nrs='npm run serve'
alias nrb='npm run build'

### Docker
alias dc='docker-compose'
alias drmif='docker rmi $(docker images -f "dangling=true" -q) -f'
