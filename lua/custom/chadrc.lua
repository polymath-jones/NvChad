---@type ChadrcConfig
local M = {}

M.ui = { theme = 'gatekeeper' }
M.plugins = 'custom.plugins'
local opts = { noremap = true ,silent =true}
vim.keymap.set("i", "jk", "<Esc>", opts)
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts) 
vim.keymap.set("n", "<leader>rn", function()
    return ":IncRename " .. vim.fn.expand "<cword>"
  end, { expr = true })
  return M
  
return M
