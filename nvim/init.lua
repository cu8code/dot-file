require "user.options"
require "user.keymaps"
require "user.plugins"

require "user.treesitter"
require "user.cmpLspConfig"
require "user.luasnip"
require "user.telescope"
require "user.code_runner"
require "user.neotree"
require "user.indent"
require "user.gitsign"
require "user.lualine"

vim.g.tokyonight_style = "night"
vim.cmd [[ 
colorscheme tokyonight-moon
highlight CursorColumn guibg=#2f334d
]]
