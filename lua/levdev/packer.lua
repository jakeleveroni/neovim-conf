-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }

  use {'nvim-telescope/telescope-ui-select.nvim' }

  use({ 
	  'catppuccin/nvim',
	  as = 'catppuccin',
	  config = function()
		  vim.cmd('colorscheme catppuccin')
	  end
  })

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use('nvim-tree/nvim-tree.lua')
  use('nvim-tree/nvim-web-devicons')
  use('nvim-lualine/lualine.nvim')
end)
