call plug#begin('~/.vim/plugged')

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " We recommend updating the parsers on update

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Color Scheme
Plug 'tomasiser/vim-code-dark'
Plug 'Mofiqul/vscode.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" nvim terminal
Plug 'akinsho/toggleterm.nvim'

" Auto pair
Plug 'windwp/nvim-autopairs'

" Wiki 
Plug 'vimwiki/vimwiki'

" Statusine
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Color 
Plug 'norcalli/nvim-colorizer.lua'

" indent-blankline
Plug 'lukas-reineke/indent-blankline.nvim'

call plug#end()

source $HOME/.config/nvim/conf/nvim-tree.vim
source $HOME/.config/nvim/conf/telescope.vim
source $HOME/.config/nvim/conf/treesitter.vim
source $HOME/.config/nvim/conf/lspconfig.vim
source $HOME/.config/nvim/conf/nvim-terminal.vim
source $HOME/.config/nvim/conf/nvim-auto-pair.vim
source $HOME/.config/nvim/conf/vimwiki.vim
source $HOME/.config/nvim/conf/indent-blankline.vim
source $HOME/.config/nvim/settings.vim

lua require'colorizer'.setup()
