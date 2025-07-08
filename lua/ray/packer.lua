-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- file exploring
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	-- fuzzy finding
	use {
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	}
	-- ui for returned lists in vim ( code actions result)
	use {'nvim-telescope/telescope-ui-select.nvim' }

	--	 code anylising / syntax highlighting
	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

	-- undotree, keeps local chages to undo
	use('mbbill/undotree')
	
	-- file explorer
	use('preservim/nerdtree')
	use('Xuyuanp/nerdtree-git-plugin')
	use('ryanoasis/vim-devicons')
  use("tpope/vim-commentary")

	use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!

--	disalbed harpoon for now
--	use {
--		"ThePrimeagen/harpoon",
--		branch = "harpoon2",
--		requires = { { "nvim-lua/plenary.nvim" } }
--	}

	-- start cmd windows in vim (to start lazy git)
	use 'voldikss/vim-floaterm'

	-- git (show edited lines & blame)
	use "lewis6991/gitsigns.nvim"

	-- LSP (language service provider )
	use { 'sbdchd/neoformat' }
end)
