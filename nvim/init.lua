require "user.options"
require "user.keymaps"
require "user.plugins"

require "user.treesitter"
require "user.cmpLspConfig"
require "user.luasnip"
require "user.telescope"
require "user.code_runner"
require "user.autotags"
require "user.neotree"
require "user.terminal"
require "user.indent"
require "user.gitsign"
require "user.lualine"

vim.g.tokyonight_style = "night"
vim.cmd [[ 
colorscheme github_dark

let g:neovide_remember_window_size = v:true
]]
