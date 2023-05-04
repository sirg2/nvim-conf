vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = false
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.scrolloff = 5

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

vim.keymap.set('n', '<leader>c', ':nmap<CR>')

vim.keymap.set('i', '<C-SPACE>', vim.lsp.buf.completion)

-- FTerm
vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

-- buffers
vim.keymap.set('n', '<leader>1', ':b 1<CR>')
vim.keymap.set('n', '<leader>2', ':b 2<CR>')
vim.keymap.set('n', '<leader>3', ':b 3<CR>')
vim.keymap.set('n', '<leader>4', ':b 4<CR>')
vim.keymap.set('n', '<leader>5', ':b 5<CR>')
vim.keymap.set('n', '<leader>6', ':b 6<CR>')
vim.keymap.set('n', '<leader>7', ':b 7<CR>')
vim.keymap.set('n', '<leader>8', ':b 8<CR>')
vim.keymap.set('n', '<leader>9', ':b 9<CR>')
