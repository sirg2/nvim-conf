require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust", "go", "java", "bash" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}

require('nvim-treesitter.install').compilers = { "gcc" }
