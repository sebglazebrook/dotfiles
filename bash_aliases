alias ll="ls -la"
alias gs="git status"
alias g="gs"
alias gpl="git pull --rebase"
alias gl="git log"
alias b="bundle install"
alias be="bundle exec"

# functions that feel like aliases

# dc == docker-compose
dc() { if [[ $@ == "rspec"  ]]; then command docker-compose -f test-docker-compose.yml run appserver rspec; else command docker-compose "$@"; fi;  }
