local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.ensure_installed({
	'tsserver',
	'eslint',
	'sumneko_lua'
})

lsp.on_attach(function(client, bufur)
	local bufopts = { noremap = true , buffer = bufur }
	vim.keymap.set('n', '<C-d>',  vim.lsp.buf.definition , bufopts)
	vim.keymap.set('n', '<S-k>', vim.lsp.buf.hover , bufopts)
	vim.keymap.set('n', '<C-c>',  vim.lsp.buf.code_action , bufopts)
	vim.keymap.set('n', '<C-r>',  vim.lsp.buf.rename , bufopts)
  vim.keymap.set('n', '<C-f>', function() vim.lsp.buf.format { async = true } end, bufopts)
end)

lsp.setup()
