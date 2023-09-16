local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
	-- Plugins here
	"cpea2506/one_monokai.nvim", -- Theme

	'nvim-telescope/telescope.nvim', tag = '0.1.3', -- Fuzzy finder
	'nvim-lua/plenary.nvim',

	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

	'fatih/vim-go',	-- Enhanced Go support

	{'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'},

	'williamboman/mason.nvim', -- :Mason -> easily manage external editor tools LSP, linters, formatters etc
	'williamboman/mason-lspconfig.nvim',

	'neovim/nvim-lspconfig',-- Congiurations for Neovims built-in LSP client
	'hrsh7th/nvim-cmp',		-- Autocompeletion framework for Neovim
	'hrsh7th/cmp-nvim-lsp', -- LSP source for nvim-cmp

	'L3MON4D3/LuaSnip',	-- When inside snippet menu adds tab cycle
	'onsails/lspkind.nvim',	-- Adds pictograms to built-in lsp
    "rafamadriz/friendly-snippets" -- Snippets for different programming languages
}


local opts = {}

require("lazy").setup(plugins, opts)
