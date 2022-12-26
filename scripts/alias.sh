alias note="cd $HOME/dot-file/notes/ && nvim ."
alias project="cd $HOME/Github/"
alias nvimd="cd $HOME/.config/nvim && nvim ."
alias n="nvim"
alias install="pkcon install"
alias search="pkcon search"
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
