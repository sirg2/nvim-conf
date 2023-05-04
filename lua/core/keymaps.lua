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

vim.opt.ignorecase = true

-- RUST LSP
vim.o.completeopt = "menuone,noinsert,noselect"
vim.opt.shortmess = vim.opt.shortmess + "c"
local opts = {
  tools = {
    runnables = {
    use_telescope = true,
  },
  inlay_hints = {
    auto = true,
    show_parameter_hints = false,
    parameter_hints_prefix = "",
    other_hints_prefix = "",
  },
},
server = {
  on_attach = on_attach_clangd,
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = {
        command = "clippy",
    },
  },
},
},
}

require('rust-tools').setup(opts)

local cmp = require('cmp')
cmp.setup({
  preselect = cmp.PreselectMode.None,
  snippets = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  mapping = {
    ["<C-P>"] = cmp.mapping.select_prev_item(),
    ["<C-N>"] = cmp.mapping.select_next_item(),
    -- Add tab support
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.close(),
    ["<CR>"] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    }),
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "vsnip" },
    { name = "path" },
    { name = "buffer" },
  },
})
-- RUST LSP

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

vim.keymap.set('n', '<leader>c', ':nmap<CR>')

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
