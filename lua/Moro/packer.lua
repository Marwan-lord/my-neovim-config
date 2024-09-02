-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } ) 
use('nvim-treesitter/playground')

use { 'neovim/nvim-lspconfig' }
use { 'hrsh7th/cmp-nvim-lsp' }
use { 'hrsh7th/nvim-cmp' }
use { 'hrsh7th/cmp-path' }
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use "lukas-reineke/indent-blankline.nvim"
use { "lewis6991/hover.nvim" }
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
use "craftzdog/solarized-osaka.nvim"
use "tpope/vim-fugitive"
use {
  "jiaoshijie/undotree",
  requires = {
    "nvim-lua/plenary.nvim",
  },
}
end)
