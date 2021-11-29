local wk = require('whichkey_setup')

wk.config{
    hide_statusline = false,
    default_keymap_settings = {
        silent=true,
        noremap=true,
    },
    default_mode = 'n',
}

local keymap = {
  e = {':NvimTreeToggle<CR>', 'NvimTree'},
  f = {':Telescope find_files<CR>', 'Find Files'}, -- set a single command and text
  g = {
    name = '+Git',
    s = {':Neogit<CR>', 'Neogit Status'},
  },
  h = {':nohl<CR>', 'Search Highlight Off'},
  u = {
    name = '+Utility',
    o = {'o<ESC>', 'Add Line After'},
    O = {'O<ESC>', 'Add Line Before'},
  },
  s = { -- set a nested structure
    name = '+Search',
    b = {'<Cmd>Telescope buffers<CR>', 'buffers'},
    h = {'<Cmd>Telescope help_tags<CR>', 'help tags'},
    c = {
      name = '+Commands',
      c = {'<Cmd>Telescope commands<CR>', 'commands'},
      h = {'<Cmd>Telescope command_history<CR>', 'history'},
    },
    q = {'<Cmd>Telescope quickfix<CR>', 'quickfix'},
    g = {
      name = '+Git',
      g = {'<Cmd>Telescope git_commits<CR>', 'commits'},
      c = {'<Cmd>Telescope git_bcommits<CR>', 'bcommits'},
      b = {'<Cmd>Telescope git_branches<CR>', 'branches'},
      s = {'<Cmd>Telescope git_status<CR>', 'status'},
    },
  },
  t = {
    name = '+Toggle',
    l = {':set list!<CR>', 'list chars'},
  },
}

wk.register_keymap('leader', keymap)
