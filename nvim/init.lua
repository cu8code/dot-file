require "user.options"
require "user.keymaps"
require "user.plugins"

require "user.treesitter"
require "user.cmpLspConfig"
require "user.luasnip"
require "user.telescope"
require "user.code_runner"
require "user.autopairs"
require "user.autotags"
require "user.neotree"
require "user.terminal"
require "user.indent"
require "user.gitsign"

vim.g.tokyonight_style = "night"
vim.cmd [[ 
colorscheme github_dark

let g:neovide_fullscreen=v:true
]]
