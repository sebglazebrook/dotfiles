alias ll="ls -lah"
alias gs="git status"
alias gpl="git pull --rebase"
alias gl="git log"
alias b="bundle install"
alias be="bundle exec"

# functions that feel like aliases

function d {
  docker $@
}

function dc() {
  case $* in
    rspec* ) shift 1; command docker-compose -f compose/test.yml run appserver rspec "$@";;
    * ) command docker-compose "$@" ;;
  esac
}

function http {
  docker run -ti httpie $@
}

function docker_delete_containers {
  docker rm $(docker ps -a -q)
}

function docker_delete_images {
  docker rmi -f  $(docker images -a -q)
}

function g {
  git $@
}

function v {
  vim $@
}

function c {
  cat $@
}
