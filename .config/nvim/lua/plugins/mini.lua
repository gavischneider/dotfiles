return { 
    'nvim-mini/mini.nvim',
    version = '*',
    config = function ()
        -- Configuration for individual mini.nvim modules goes here
        -- statusline
        local statusline = require 'mini.statusline'
        statusline.setup { use_icons = true }
    end
}