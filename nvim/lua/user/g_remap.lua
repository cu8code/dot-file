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
vim.keymap.set('n', '<C-d>', builtin.diagnostics, opts)

-- Harpoon
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n','A',mark.add_file)
vim.keymap.set('n','E',ui.toggle_quick_menu)

-- File System
vim.keymap.set('n','<C-e>',':Ex<cr>')

-- diagnostics
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

