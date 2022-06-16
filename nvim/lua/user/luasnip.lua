-- All custom snipit
require("luasnip.loaders.from_vscode").lazy_load() 

vim.cmd [[
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
]]

