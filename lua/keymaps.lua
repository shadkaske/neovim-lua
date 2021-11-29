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

-- Telescope
map {'n', '<Leader>f', ':Telescope find_files<CR>'}

map {'n', '<Leader>h', ':nohl<CR>'}
map {'n', '<Leader>o', 'o<ESC>'}
map {'n', '<Leader>O', 'O<ESC>'}

-- Close window
map {'n', '<C-q>', '<C-w>q'}

-- Tab to cycle buffers
map {'n', '<TAB>', ':bnext<CR>'}
map {'n', '<S-TAB>', ':bprev<CR>'}

-- Window movement
map {'n', '<C-h>', '<C-w>h'}
map {'n', '<C-j>', '<C-w>j'}
map {'n', '<C-k>', '<C-w>k'}
map {'n', '<C-l>', '<C-w>l'}

-- Window resizing
map {'n', '<M-j>', ':resize -2<CR>'}
map {'n', '<M-k>', ':resize +2<CR>'}
map {'n', '<M-h>', ':vertical resize -2<CR>'}
map {'n', '<M-l>', ':vertical resize +2<CR>'}

map {'i', 'jj', '<ESC>'}
map {'i', ':w', '<ESC>:w<CR>'}
map {'i', ';;', '<C-o>A;'}

map {'x', 'K', ":move \'<-2<CR>gv-gv"}
map {'x', 'J', ":move \'>+1<CR>gv-gv"}
