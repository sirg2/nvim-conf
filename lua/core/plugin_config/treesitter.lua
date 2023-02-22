require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust", "go" },

  sync_install = true,
  auto_install = true,
  highlight = {
    enable = true,
  },
}

