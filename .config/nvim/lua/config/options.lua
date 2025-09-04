-- Set leader key
vim.g.mapleader = " "

-- Enable line numbers
vim.opt.number = true

-- Set tab and indent settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Enable mouse support
vim.opt.mouse = "a"

-- Clipboard integration
vim.opt.clipboard:append({"unnamed", "unnamedplus"})

-- Display settings
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8