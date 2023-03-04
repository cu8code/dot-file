vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
      -- Packer can manage itself
      use('wbthomason/packer.nvim')
      use {
          'nvim-telescope/telescope.nvim', tag = '0.1.0',
          requires = { { 'nvim-lua/plenary.nvim' } }
      }
      use('folke/tokyonight.nvim')

      use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
      use('nvim-treesitter/playground')

      use {
          'VonHeikemen/lsp-zero.nvim',
          requires = {
              -- LSP Support
              { 'neovim/nvim-lspconfig' },
              { 'williamboman/mason.nvim' },
              { 'williamboman/mason-lspconfig.nvim' },

              -- Autocompletion
              { 'hrsh7th/nvim-cmp' },
              { 'hrsh7th/cmp-buffer' },
              { 'hrsh7th/cmp-path' },
              { 'saadparwaiz1/cmp_luasnip' },
              { 'hrsh7th/cmp-nvim-lsp' },
              { 'hrsh7th/cmp-nvim-lua' },

              -- Snippets
              { 'L3MON4D3/LuaSnip' },
              { 'rafamadriz/friendly-snippets' },
          }
      }
      use {
          "folke/trouble.nvim",
          requires = "kyazdani42/nvim-web-devicons",
          config = function()
            require("trouble").setup {}
          end
      }
      use("folke/which-key.nvim")
      use("mbbill/undotree")
      use { 'romgrk/barbar.nvim',
          require = {
              "nvim-tree/nvim-web-devicons"
          }
      }
      use 'kdheepak/lazygit.nvim'
      use 'jacoborus/tender.vim'
      use "catppuccin/nvim"
      use "EdenEast/nightfox.nvim"
      use { "nvim-lualine/lualine.nvim",
          requires = { 'kyazdani42/nvim-web-devicons', opt = true }
      }
      use { "numToStr/Comment.nvim" }
      use 'sunjon/shade.nvim'
      use({
          "ziontee113/color-picker.nvim",
          config = function()
            require("color-picker")
          end,
      })
      use { 'glepnir/dashboard-nvim' }
      use { "jakewvincent/mkdnflow.nvim", rocks = 'luauf8' }
      use "ekickx/clipboard-image.nvim"
      use "lewis6991/gitsigns.nvim"
      use { 'kevinhwang91/nvim-bqf', ft = 'qf' }
      use {
          'nvim-tree/nvim-tree.lua',
          requires = {
              'nvim-tree/nvim-web-devicons', -- optional, for file icons
          },
          tag = 'nightly' -- optional, updated every week. (see issue #1193)
      }
      use {
          "danymat/neogen",
          config = function()
            require('neogen').setup {
                snippet_engine = "luasnip"
            }
          end,
          requires = "nvim-treesitter/nvim-treesitter",
          -- Uncomment next line if you want to follow only stable versions
          -- tag = "*"
      }
      use {
        "RishabhRD/popfix",
        "RishabhRD/nvim-cheat.sh"
      }
      use {
        "KabbAmine/yowish.vim"
      }
      use{
        "tjdevries/cyclist.vim"
      }
    end)
