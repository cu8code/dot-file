local opts = { silent = true, noremap = true }
local term_opts = { silent = true }

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

-- Luasnip
vim.keymap.set({ "i", "s" }, "<c-n>", function()
  local luasnip = require("luasnip")
  if luasnip.jumpable(1) then
    luasnip.jump(1)
  end
end, term_opts)

-- Buffer
vim.keymap.set('n', '<C-[>', ':BufferPrevious<CR>', opts)
vim.keymap.set('n', '<C-]>', ':BufferNext<CR>', opts)
vim.keymap.set('n', '<C-x>', ':BufferClose<CR>', opts)

-- deattach anything to the given key
vim.keymap.set('n', '<Esc>', ':<CR>', opts)
