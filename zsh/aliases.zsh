alias reload!='. ~/.zshrc'

alias cppwd="pwd | pbcopy"
alias cal="gcal -q US_IA"
alias cat="ccat"
alias http="http --verify=no"
alias weather="curl wttr.in"

alias -s rb=vim
alias -s md=vim


clip ()
{
  cat $1 | pbcopy
}
