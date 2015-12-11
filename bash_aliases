# Enable colours when ls'ing
colorflag="-G"

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -laF ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"

# Color palette for ls
export LSCOLORS=ExFxBxDxCxegedabagacad

alias gpl="git pull --rebase"
alias b="bundle install"
alias be="bundle exec"

# Safety first, ask for confirmation before overriding files
# when doing cp and mv and ln
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# copy working directory
alias cwd='pwd | tr -d "\r\n" | pbcopy'

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# untar
alias untar='tar xvf'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# functions that feel like aliases

function gs {
  git status -sb "$@"
}

function gl {
  git log --pretty=oneline -n 20 --graph --abbrev-commit
}

function ff {
  fuzzy "$@"
}

function d {
  docker "$@"
}

function dm {
  docker-machine "$@"
}

function dc() {
  case $* in
    rspec* ) shift 1; command docker-compose -f compose/test.yml run appserver rspec "$@";;
    * ) command docker-compose "$@" ;;
  esac
}

function http {
  docker run -ti httpie "$@"
}

function docker_delete_containers {
  docker rm $(docker ps -a -q)
}

function docker_delete_images {
  docker rmi -f  $(docker images -a -q)
}

function g {
  git "$@"
}

function v {
  nvim "$@"
}

function c {
  cat "$@"
}
