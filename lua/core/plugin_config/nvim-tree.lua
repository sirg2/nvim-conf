vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup()

vim.keymap.set('n', '<C-n>', ':NvimTreeFindFile<CR>')
vim.keymap.set('n', '<C-f>', ':NvimTreeFocus<CR>')
