alias project="cd $HOME/respository/"
alias nconf="cd $HOME/.config/nvim && nvim ."
alias n="nvim"
alias c="clear"
alias l="exa -lah"
alias ls=exa
alias sl=exa
alias serve="python3 -m http.server"

take()
{
  mkdir -p $1
  cd $1
}

