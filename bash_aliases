# Enable colours when ls'ing
colorflag="-G"

# List all files colorized in long format
# alias l="ls -lF ${colorflag}"
alias l="exa -lh --git"

# List all files colorized in long format, including dot files
alias la="exa -lah --git"
# alias la="ls -laF ${colorflag}"

# List only directories
# alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"
alias lsd="exa -ld | grep --color=never '^d'"

# Color palette for ls
alias ls="exa"
export LSCOLORS=ExFxBxDxCxegedabagacad

# Safety first, ask for confirmation before overriding files
# when doing cp and mv and ln
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'

# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Enable aliases to be sudo’ed
alias sudo='sudo '

# functions that feel like aliases
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
