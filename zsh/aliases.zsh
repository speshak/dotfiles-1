alias reload!='. ~/.zshrc'

alias cppwd="pwd | pbcopy"
alias cal="gcal -q US_IA"
alias cat="ccat"
alias http="http --verify=no"
alias weather="curl wttr.in"

alias -s rb=vim
alias -s md=vim

alias crontab="VIM_CRONTAB=true crontab"

# For macos
alias md5sum="md5 -r"

clip ()
{
  cat $1 | pbcopy
}

function do_git {
  cmd=$1
  shift

  "`whence -p git`" "$cmd" "$@"

  if [ "$cmd" '==' "clone" ]; then
    git-autoprecommit "$@"
  fi
}

if whence -p git-autoprecommit > /dev/null; then
  alias git='do_git'
fi
