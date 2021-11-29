require('plugins')
require('options')
require('autocmd')
require('keymaps')

-- Load LSP
require('lsp.lua-ls')

-- Completion Settings
require('nvim-cmp.init')

-- Git Things
require('neogit.init')

-- Utility Settings
require('pears.init')
require('whichkey.init')
require('tmuxnav.init')

-- UI
require('themes.onedark')
require('lualine.init')
