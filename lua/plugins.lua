local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local use = require('packer').use

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup({function()
  -- Packer
  use 'wbthomason/packer.nvim'
  -- Onedark theme
  use 'navarasu/onedark.nvim'
  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
    }
  -- LSP
  use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
  }
  use { 'glepnir/lspsaga.nvim' }
  -- Telescope
  use { 'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Snippets
  use { 'L3MON4D3/LuaSnip' }
  -- Completion
  use { 'hrsh7th/nvim-cmp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-nvim-lua' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'saadparwaiz1/cmp_luasnip' }
  use { 'onsails/lspkind-nvim' }
  -- Utilities ( comments movement etc )
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  use {
    'phaazon/hop.nvim',
    branch = 'v1', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  }
  use { 'steelsojka/pears.nvim' }
  use {
    'blackCauldron7/surround.nvim',
    config = function()
      require('surround').setup {mappings_style = 'surround'}
    end
  }
  -- UI Stuffs
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }

  -- Git Stuffs
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }
  use {
    'TimUntersberger/neogit',
    requires = {'nvim-lua/plenary.nvim'},
  }

end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})
