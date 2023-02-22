require("core.keymaps")
require("core.plugins")

-- plugin files
require("core.plugin_config")

-- treesitter
require 'nvim-treesitter.install'.compilers = {"gcc"}
require 'nvim-treesitter.install'.prefer_git = false
