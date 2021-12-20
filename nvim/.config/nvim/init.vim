call plug#begin('~/.vim/plugged')
" requires
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'glepnir/indent-guides.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

call plug#end()

source $HOME/.config/nvim/conf/indent-guid.vim
source $HOME/.config/nvim/conf/nvim-tree.vim
source $HOME/.config/nvim/conf/telescope.vim
source $HOME/.config/nvim/conf/treesitter.vim
source $HOME/.config/nvim/settings.vim

