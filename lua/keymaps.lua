local g = vim.g

local map = function(key)
  -- get the extra options
  local opts = {noremap = true, silent = true}
  for i, v in pairs(key) do
    if type(i) == 'string' then opts[i] = v end
  end

  -- basic support for buffer-scoped keybindings
  local buffer = opts.buffer
  opts.buffer = nil

  if buffer then
    vim.api.nvim_buf_set_keymap(0, key[1], key[2], key[3], opts)
  else
    vim.api.nvim_set_keymap(key[1], key[2], key[3], opts)
  end
end

g.mapleader = ' '

-- Close window
map {'n', '<C-q>', '<C-w>q'}

-- Tab to cycle buffers
map {'n', '<TAB>', ':bnext<CR>'}
map {'n', '<S-TAB>', ':bprev<CR>'}

map {'i', 'jj', '<ESC>'}
map {'i', ':w', '<ESC>:w<CR>'}
map {'i', ';;', '<C-o>A;'}
map {'n', ';;', 'A;<ESC>'}

-- Move Lines in Visual Mode
map {'x', 'K', ":move \'<-2<CR>gv-gv"}
map {'x', 'J', ":move \'>+1<CR>gv-gv"}

-- Hop Shortcuts
map {
  'n',
  'f',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>"
}
map {
  'n',
  'F',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>"
}
map {
  'n',
  's',
  "<cmd>lua require'hop'.hint_char2({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>"
}
map {
  'n',
  'S',
  "<cmd>lua require'hop'.hint_char2({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>"
}
