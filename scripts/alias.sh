alias note="cd $HOME/dot-file/notes/ && nvim readme.md"
alias project="cd $HOME/Github/"
alias nconf="cd $HOME/.config/nvim && nvim ."
alias n="nvim"
alias i="pkcon install"
alias s="pkcon search"
alias r-"pkcon remove"
alias c="clear"
alias l="exa -lah"
alias ls=exa
alias sl=exa
alias serve="python3 -m http.server"
alias rm="trash-put" # trash cli



take()
{
  mkdir -p $1
  cd $1
}

