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
vim.keymap.set('n', '<leader>ff', ":Telescope find_files<CR>", opts)
vim.keymap.set('n', '<leader>fg', ":Telescope live_grep<CR>", opts)
vim.keymap.set('n', '<leader>fb', ":Telescope buffers<CR>", opts)
vim.keymap.set('n', '<leader>fh', ":Telescope help_tags<CR>", opts)

