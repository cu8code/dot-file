local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    print("<::> cloning packer plz wait...!!!")
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

      use('wbthomason/packer.nvim')

      use {
          'nvim-telescope/telescope.nvim', tag = '0.1.0',
          requires = { { 'nvim-lua/plenary.nvim' } }
      }

      use {
        "ThePrimeagen/harpoon",
        requires = { { 'nvim-lua/plenary.nvim' } }
      }

      use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

      use {
          "folke/trouble.nvim",
          requires = "kyazdani42/nvim-web-devicons"
      }

      use("folke/which-key.nvim")

      -- theme
      use('folke/tokyonight.nvim')
      use 'jacoborus/tender.vim'
      use "catppuccin/nvim"
      use "EdenEast/nightfox.nvim"
      use { "KabbAmine/yowish.vim" }
      use { "sainnhe/everforest" }
      -- end

      use { "nvim-lualine/lualine.nvim",
          requires = { 'kyazdani42/nvim-web-devicons', opt = true }
      }
      use { "numToStr/Comment.nvim" }
      use { "lewis6991/gitsigns.nvim" }


      if packer_bootstrap then
        require('packer').sync()
      else
        require("user")
      end

    end)
