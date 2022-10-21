-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'neovim/nvim-lspconfig'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- dap
  use 'mfussenegger/nvim-dap'
  -- elixir.nvim
  use 'mhanberg/elixir.nvim'
  -- telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use { 'nvim-telescope/telescope.nvim',
  	requires = { {'nvim-lua/plenary.nvim'} }}
  -- git plugin
  use 'tpope/vim-fugitive'
  -- lsp installer
  use 'williamboman/mason.nvim'
  use 'vim-airline/vim-airline'
  -- On-demand loading
  -- use 'neoclide/coc.nvim', {'branch': 'release'}
  use 'mattn/emmet-vim'
  use 'morhetz/gruvbox'
  use 'kyazdani42/nvim-web-devicons'
  use { 'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
      }
  use 'junegunn/vim-easy-align'
  use 'crbinz/vim-links'
  -- use 'kien/ctrlp.vim'
  use 'phaazon/hop.nvim'
  use 'jiangmiao/auto-pairs'
  -- treesitter
  use { 'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
--     config = function()
--         require("config.treesitter").setup()
--       end
    }
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
end)
