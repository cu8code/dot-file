function setup() {
  dir=$(fd --type d --hidden --exclude .git --exclude node_module --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv | fzf)
  cd $dir
  tmux
  cd
}

alias ff='setup'
