-- Check if Packer is installed
local packer_install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(packer_install_path)) > 0 then
  -- Packer is not installed, download it
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '..packer_install_path)
  vim.api.nvim_command('packadd packer.nvim')
  require('packer').compile()
  print('Packer plugins compiled!')
  print('Packer.nvim installed successfully!')
else
  -- Packer is already installed
  print('Packer.nvim is already installed.')
end

require("user")
