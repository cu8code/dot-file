local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }
  use "wbthomason/packer.nvim"

  -- Markdown
  use({'jakewvincent/mkdnflow.nvim',
  rocks = 'luautf8', -- Ensures optional luautf8 dependency is installed
  config = function()
    require('mkdnflow').setup({})
  end
})
use "ekickx/clipboard-image.nvim"
use "jubnzv/mdeval.nvim"

-- TreeSitter 
use {
  'nvim-treesitter/nvim-treesitter',
  run = ":TSUpdate"
}

use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}

-- Color 
use "lunarvim/darkplus.nvim"
use "folke/tokyonight.nvim"
use ({ 'projekt0n/github-nvim-theme' })

-- LSP
use 'neovim/nvim-lspconfig'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/cmp-nvim-lsp'
use "hrsh7th/nvim-cmp"
-- use({
--   "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
--   config = function()
--     require("lsp_lines").setup()
--   end,
-- })
-- For vsnip users.
use 'hrsh7th/cmp-vsnip'
use 'hrsh7th/vim-vsnip'

-- For luasnip users.
use "L3MON4D3/LuaSnip"
use 'saadparwaiz1/cmp_luasnip'
use 'rafamadriz/friendly-snippets'

-- FORMAT
use 'sbdchd/neoformat'

-- multi cursor
use 'mg979/vim-visual-multi'

-- Neotree
use {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",
  requires = {
    "nvim-lua/plenary.nvim",
    "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  }
}

-- bar
use {
  'romgrk/barbar.nvim',
  requires = {'kyazdani42/nvim-web-devicons'}
}

-- see indentaion
use "lukas-reineke/indent-blankline.nvim"

-- git
use {
  'lewis6991/gitsigns.nvim',
}
use "kdheepak/lazygit.nvim"

-- spell
use({"jose-elias-alvarez/null-ls.nvim",
config=function ()
  require("null-ls").setup({
    sources = {
      require("null-ls").builtins.completion.spell.with({
        filetypes={"markdown"}
      }),
      require("null-ls").builtins.diagnostics.write_good,
    },
  })
end
  })

  -- colorizer
  use({
    "norcalli/nvim-colorizer.lua",
    config=function ()
      require'colorizer'.setup()
    end
  })

  -- lua line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use {
    'numToStr/Comment.nvim',
    config = function ()
      require('Comment').setup()
    end

  }
  use{
    'windwp/nvim-ts-autotag',
    config = function ()
    require'nvim-treesitter.configs'.setup {
      autotag = {
        enable = true,
      }
    }
    vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        virtual_text = {
            spacing = 5,
            severity_limit = 'Warning',
        },
        update_in_insert = true,
    }
)
    end
  }
use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
}
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
