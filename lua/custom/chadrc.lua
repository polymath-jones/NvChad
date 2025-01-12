---@type ChadrcConfig
local M = {}

M.ui = { theme = 'onedark'  }
M.plugins = 'custom.plugins'
local opts = { noremap = true ,silent =true}

vim.keymap.set("n", "ff", function()
  local input_string = "" .. vim.fn.expand "<cword>"
  if input_string == "" then
    return
  end
  require("telescope.builtin").grep_string {
    search = input_string,
  }
end)
vim.keymap.set("i", "jk", "<Esc>", opts)
vim.keymap.set("n", "Q", "<Cmd>q<CR>", opts)
vim.keymap.set("n", "qq", "<Cmd>cclose<CR>", opts)
vim.keymap.set("n", "<C-l>", "<Cmd>SessionManager load_session<CR>", opts)
vim.keymap.set("n", ",,", "<Cmd>noh<CR>", opts)
vim.keymap.set('n', 't', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'T', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', '?', '<Cmd>Lspsaga outline<CR>', opts)
vim.keymap.set('n', ';', '<C-u>', opts) 
vim.keymap.set('n', 'm', '<C-d>', opts) 
vim.keymap.set("n", "<leader>rn", function()
    return ":IncRename " .. vim.fn.expand "<cword>"
  end, { expr = true }) 
return M
