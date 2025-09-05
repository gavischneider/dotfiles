-- Set leader key
vim.g.mapleader = " "

-- Enable line numbers
vim.opt.number = true

-- Enable mouse support
vim.opt.mouse = "a"

-- Clipboard integration
vim.opt.clipboard:append({"unnamed", "unnamedplus"})

-- Tab and indentation settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Display settings
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- File handling
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"

-- Split behavior
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Completion
vim.opt.completeopt = {"menu", "menuone", "noselect", "noinsert", "fuzzy", "nosort"}
