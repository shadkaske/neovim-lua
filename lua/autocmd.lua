vim.cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- Packer Sync
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-- Lua Tabs
vim.cmd([[autocmd BufEnter *.lua set shiftwidth=2 softtabstop=2 tabstop=2]])
