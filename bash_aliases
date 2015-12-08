alias ll="ls -lah"
alias gpl="git pull --rebase"
alias b="bundle install"
alias be="bundle exec"

# Safety first, ask for confirmation before overriding files
# when doing cp and mv
alias cp='cp -i'
alias mv='mv -i'

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

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
  vim "$@"
}

function c {
  cat "$@"
}
