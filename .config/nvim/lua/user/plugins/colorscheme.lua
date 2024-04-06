return {
  "folke/tokyonight.nvim",
  priority = 1000, -- Load this before any other plugin
  config = function()
    vim.cmd("colorscheme tokyonight")
  end
}

