vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

-- show number OR relativenumber
vim.opt.relativenumber = true
vim.opt.number = true

-- show invisible keys
vim.opt.listchars = { space = '·', tab = '>→', nbsp = '␣', trail = '•', eol = '¶', precedes = '«', extends = '»' }
vim.opt.list = true
-- vim.opt.listchars = { space = '·', tab = '→', eol = '¶'eol = '¶stchars = { space = '_', tab = '>~' }stchars = { space = '_', tab = '>~' }'
-- vim.keymap.set('n', '<leader>i', (vim.opt.list = not vim.opt.list))

vim.keymap.set('n', '<leader>g', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>s', ':w<CR>:source %<CR>')

-- multi window navigation keymaps
vim.keymap.set('n', '<leader>k', '<c-w>k')
vim.keymap.set('n', '<leader>j', '<c-w>j')
vim.keymap.set('n', '<leader>l', '<c-w>l')
vim.keymap.set('n', '<leader>h', '<c-w>h')
