local opt = vim.opt
local g = vim.g

opt.hidden = true
opt.cmdheight = 1
opt.title = true
opt.scrolloff = 3
opt.shell = os.getenv('SHELL')
opt.laststatus = 2
opt.timeoutlen = 500
opt.splitbelow = true
opt.splitright = true
opt.clipboard = 'unnamedplus'
opt.expandtab = true
opt.smarttab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4
opt.shiftround = true
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.mouse = 'a'
opt.cursorline = true
opt.signcolumn = 'yes:1'
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.lazyredraw = true
opt.errorbells = false
opt.visualbell = true
opt.backup = false
opt.writebackup = false
opt.autoindent = true
opt.smartindent = true
opt.updatetime = 300
opt.autoread = true

opt.listchars = {eol = '↲', tab = '▸ ', trail = '·'}

-- Completion options
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.shortmess:append "c"
