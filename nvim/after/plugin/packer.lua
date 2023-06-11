vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
      -- Packer can manage itself
      use('wbthomason/packer.nvim')
      use {
          'nvim-telescope/telescope.nvim', tag = '0.1.0',
          requires = { { 'nvim-lua/plenary.nvim' } }
      }

      use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

      use {
          "folke/trouble.nvim",
          requires = "kyazdani42/nvim-web-devicons",
          config = function()
            require("trouble").setup {}
          end
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
      use "lewis6991/gitsigns.nvim"
    end)
