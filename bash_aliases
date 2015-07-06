alias ll="ls -lah"
alias gs="git status"
alias g="gs"
alias gpl="git pull --rebase"
alias gl="git log"
alias b="bundle install"
alias be="bundle exec"

# functions that feel like aliases

function dc() {
  case $* in
    rspec* ) shift 1; command docker-compose -f compose/test.yml run appserver rspec "$@";;
    * ) command docker-compose "$@" ;;
  esac
}
