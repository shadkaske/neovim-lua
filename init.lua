require('plugins')
require('options')
require('autocmd')
require('keymaps')

-- Load LSP
require('lsp.lua-ls')

-- Completion Settings
require('nvim-cmp')

-- Git Things
require('cfg_neogit')

-- Utility Settings
require('cfg_pears')
require('whichkey')

-- UI
require('themes.onedark')
require('lualine.init')
