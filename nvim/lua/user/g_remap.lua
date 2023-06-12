local opts = { silent = true, noremap = true }

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Visual Block --
-- Move text up and dow
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'F', builtin.find_files, opts)
vim.keymap.set('n', '<C-g>', builtin.live_grep, opts)
vim.keymap.set('n', 'B', builtin.buffers, opts)

-- Harpoon
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n','A',mark.add_file)
vim.keymap.set('n','E',ui.toggle_quick_menu)

vim.keymap.set('n','1',function() ui.nav_file(1) end)
vim.keymap.set('n','2',function() ui.nav_file(2) end)
vim.keymap.set('n','3',function() ui.nav_file(3) end)
vim.keymap.set('n','4',function() ui.nav_file(4) end)
