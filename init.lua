-- Set <Space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable default space behavior in normal and visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

require("config.lazy")

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- Sidebar numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Sync clipboard with system
vim.opt.clipboard = "unnamedplus"

vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

