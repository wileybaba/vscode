export ZSH="/Users/wileymckayconte/.oh-my-zsh"

ZSH_THEME="bababash"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:~/legalpad/cloud/bin

alias gp="git pull"
alias space="du -sh *"
alias ..="cd .."
alias ls="ls -G"
alias zpf="vim ~/.zshrc"
alias spf="source ~/.zshrc"
alias yt="yarn test --watch"
alias rs="rails s"
alias rt="rails t"
alias devs="./bin/webpack-dev-server"
alias gcoxyz="git checkout xyz"
alias gcob="git checkout -b "

newb ()
{
  git checkout xyz
  git pull
  git checkout -b $1
}

mkcd ()
{
  mkdir -p -- $1 && cd -P -- $1
}

freshdb ()
{
  rake db:drop
  rake db:create
  psql novo < db/structure.sql
  psql novo_test < db/structure.sql
  rails db:migrate
  rails db:fixtures:load
}