local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
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
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  } 
  -- Terminal
  use 'numToStr/FTerm.nvim'

  -- RUST LSP
  use ({
    'j-hui/fidget.nvim',
    config = function()
      require('fidget').setup()
    end
  })
  use 'hrsh7th/nvim-cmp'
  use({
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-buffer',
    after = { 'hrsh7th/nvim-cmp' },
    requires = { 'hrsh7th/nvim-cmp' },
  })
  use 'hrsh7th/vim-vsnip'
  use 'simrat39/rust-tools.nvim'

  use 'nvim-lua/popup.nvim'
  -- RUST LSP

  -- Bufferline
  use {
    "akinsho/nvim-bufferline.lua",
    event = "BufReadPre",
    wants = "nvim-web-devicons",
--    config = function()
--      require("config.bufferline").setup()
--    end,
  }
--  use 'neovim/nvim-lspconfig'
--  use 'hrsh7th/nvim-cmp'

 if packer_bootstrap then
 require('packer').sync()
 end
end)
