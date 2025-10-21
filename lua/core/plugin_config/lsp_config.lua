require('mason').setup()
require('mason-lspconfig').setup({
  -- in list below add language servers needed
  ensure_installed = { 'clangd' },--, 'python-lsp-server' },
})


-- Use an on_attach function to only map the following keys
-- -- after the language server attaches to the current buffer
local on_attach_clangd = function(client, bufnr)
--   -- Enable completion triggered by <c-x><c-o>
     vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'

     -- Mappings.
     -- See `:help vim.lsp.*` for documentation on any of the below functions
     local bufopts = { noremap=true, silent=true, buffer=bufnr }
     vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
     vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
     vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
     vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
     vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
     vim.keymap.set('n', '<space>wl', function()
       print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
     end, bufopts)
     vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
     vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
     vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
     vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
     vim.keymap.set('n', 'gl', vim.diagnostic.open_float, bufopts)
     vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

-- local on_attach = function(client, bufnr)
--   vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
--   vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
-- 
--   vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
--   vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
--   vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_reference, {})
--   vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
-- end


-- python
local on_attach_py = function(client, bufnr)
--   -- Enable completion triggered by <c-x><c-o>
     vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'

     -- Mappings.
     -- See `:help vim.lsp.*` for documentation on any of the below functions
     local bufopts = { noremap=true, silent=true, buffer=bufnr }
     vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
     vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
     vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
     vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
     vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
     vim.keymap.set('n', '<space>wl', function()
       print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
     end, bufopts)
     vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
     vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
     vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
     vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
     vim.keymap.set('n', 'gl', vim.diagnostic.open_float, bufopts)
     vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

-- LUA
local on_attach_lua = function(client, bufnr)
--   -- Enable completion triggered by <c-x><c-o>
     vim.bo[bufnr].omnifunc = 'v:lua.vim.lsp.omnifunc'

     -- Mappings.
     -- See `:help vim.lsp.*` for documentation on any of the below functions
     local bufopts = { noremap=true, silent=true, buffer=bufnr }
     vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
     vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
     vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
     vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
     vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
     vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
     vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
     vim.keymap.set('n', '<space>wl', function()
       print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
     end, bufopts)
     vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
     vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
     vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
     vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
     vim.keymap.set('n', 'gl', vim.diagnostic.open_float, bufopts)
     vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.config.clangd = {
  cmd = { 'clangd' },
  filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda', 'proto' },
  root_markers = { '.clangd', '.clang-tidy', '.clang-format', 'compile_commands.json', 'compile_flags.txt', 'configure.ac', '.git' },
  on_attach = on_attach_clangd,
  capabilities = capabilities,
}

vim.lsp.config.pyright = {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', 'Pipfile', 'pyrightconfig.json', '.git' },
  on_attach = on_attach_py,
  capabilities = capabilities,
}

vim.lsp.config.lua_ls = {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.luarc.jsonc', '.luacheckrc', '.stylua.toml', 'stylua.toml', 'selene.toml', 'selene.yml', '.git' },
  on_attach = on_attach_lua,
  capabilities = capabilities,
}
--require('lspconfig').pylsp.setup {
--  on_attach = on_attach_py,
--}

