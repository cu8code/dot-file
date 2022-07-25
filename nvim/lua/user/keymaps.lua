local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-h>", ":BufferPrevious<CR>", opts)
keymap("n", "<S-l>", ":BufferNext<CR>", opts)
keymap("n", "<S-x>", ":BufferClose<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- RunCode
keymap('n', '<S-r>', ':RunCode<CR>', { noremap = true, silent = true })

-- FormatCode
keymap('n', '<S-f>', ':Neoformat<CR>', { noremap = true, silent = true })

-- Telescope
keymap('n', '<S-m>', ':Telescope live_grep<CR>', { noremap = true, silent = true })
keymap('n', '<S-d>', ':Telescope diagnostics<CR>', { noremap = true, silent = true })

-- Luasnip
vim.keymap.set({"i","s"},"<c-k>",function()
  local luasnip=require("luasnip")
  if luasnip.jumpable(-1) then
    luasnip.jump(-1)
  end
end,term_opts)

vim.keymap.set({"i","s"},"<c-j>",function()
  local luasnip=require("luasnip")
  if luasnip.jumpable(1) then
    luasnip.jump(1)
  end
end,term_opts)

-- NeoTree
vim.cmd([[nnoremap \ :Neotree float source=filesystem reveal<cr>

" LazyGit
nnoremap <silent> 1 :LazyGit<CR>
]])

