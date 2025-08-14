-- Set <Space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable default space behavior in normal and visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

require("config.lazy")

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = false 
vim.opt.autoindent = true

-- Sidebar numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Sync clipboard with system
vim.opt.clipboard = "unnamedplus"


-- Remove autocomment on enter
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})

-- KEYBINDS --

-- Remove ZZ from save and exit
vim.keymap.set('n', 'ZZ', '<NOP>', {noremap = true, silent = true})

-- Map NvimTreeToggle 
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- Map jk to leave Insert mode  
vim.keymap.set('i', 'jk', '<Esc>', {noremap = true, silent = true})

-- Map
