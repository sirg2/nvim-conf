local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'ellisonleao/gruvbox.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'

  -- TELESCOPE
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- LSP
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }

  -- Terminal
  use 'numToStr/FTerm.nvim'

  -- Bufferline
  use {
    "akinsho/nvim-bufferline.lua",
    event = "BufReadPre",
    wants = "nvim-web-devicons",
    --    config = function()
    --      require("config.bufferline").setup()
    --    end,
  }

  -- AUTOCOMPLETE
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      -- LSP source for nvim-cmp
      'hrsh7th/cmp-nvim-lsp',

      -- Snippet engine
      'L3MON4D3/LuaSnip',

      -- Snippet completions
      'saadparwaiz1/cmp_luasnip',

      -- Useful for function signatures
      'hrsh7th/cmp-nvim-lsp-signature-help',

      -- Optional: buffer and path completions
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
    },
  }

  -- SNIPPETS
  use 'rafamadriz/friendly-snippets'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
