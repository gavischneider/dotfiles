-- Vimscript: Tell Netrw to use tree style explorer
vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- Line Numbers
opt.number = true

-- Scrolling
opt.mouse = "a"

-- Tabs & Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- Line Wrapping
opt.wrap = false

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Cursor Line
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Allow backspace on indent, eol and insert mode start position
opt.backspace = "indent,eol,start"

-- Use system clipboard as default register
opt.clipboard:append("unnamedplus")

-- Split Windows
opt.splitright = true
opt.splitbelow = true

-- Dash is Part of Word
opt.iskeyword:append("-")
