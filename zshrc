# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="gozilla"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


# ALIASES

# SYSTEM
alias cpu='top -o cpu'
alias mem='top -o vsize'
alias ..="cd .."
alias ...="cd ../.."
alias kuwest="cd ~/code/kuwest"
alias reload="source ~/bin/dotfiles/bashrc"
alias dotfiles="mate ~/bin/dotfiles/"
alias code="cd ~/code"

# RUBY
alias r="rails"
alias gemi="sudo gem install --no-rdoc --no-ri"
alias cdrop='rake db:drop:all && rake db:migrate && rake features'
alias c='cucumber -f pretty'

# GIT
alias g='git status'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset - %s %Cgreen(%cr)%Creset" --abbrev-commit --date=relative'
alias gb='git checkout -b'
function gm() {
  git merge $1 --no-ff
}
function gc() {
  git commit -v -a -m "$*"
}
function gbt() {
  git branch --track $2 remotes/$1/$2
  git checkout $2
}

alias pa="ps aux | grep "

# RUBY
export RUBY_HEAP_MIN_SLOTS=500000
export RUBY_HEAP_SLOTS_INCREMENT=250000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=50000000
export RUBY_HEAP_FREE_MIN=100000


#crowdtap
deploycrowd='ey deploy -e crowdtap_staging -a crowdtap --ref master --migrate='\''rake mongoid:migrate'\'

# autocompletion for cuc
_cucumber_features() {
  compadd $(ls features/**/*.feature | sed "s/features\/\(.*\).feature/\1/")
}
compdef _cucumber_features cuc

PATH=$PATH:~/bin
