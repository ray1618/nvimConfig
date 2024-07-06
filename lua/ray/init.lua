require('ray/set')
require('ray/remap')

vim.o.hlsearch = true
vim.highlight.on_yank()
vim.cmd('colorscheme panda')

-- yank highlight and putting it in a group
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', {clear = true}),
  callback = function()
	  vim.highlight.on_yank()
  end,
})

-- install lazy.vim (plugin manager)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

-- install plugins 
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
    -- install teleschope (fuzzy finding)
     {
     'nvim-telescope/telescope.nvim', lazy = true, tag = '0.1.6',
 -- or                              , branch = '0.1.x',
       dependencies = { 'nvim-lua/plenary.nvim' }
     },
	 {'nvim-telescope/telescope-ui-select.nvim', lazy = true},
	 {'nvim-telescope/telescope-file-browser.nvim', lazy = true},
	 {'nvim-treesitter/nvim-treesitter', lazy = true},
--
	--undotree, keeps local chages to undo
	{'mbbill/undotree', lazy = true},
--
 	-- file explorer
	'preservim/nerdtree',
	'Xuyuanp/nerdtree-git-plugin',
	'ryanoasis/vim-devicons',
--
--   -- "gc" to comment visual regions/lines
   {'numToStr/Comment.nvim', opts = {lazy = true}},
    { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
   { -- Useful plugin to show you pending keybinds.
     'folke/which-key.nvim',
     event = 'VimEnter', -- Sets the loading event to 'VimEnter'
     config = function() -- This is the function that runs, AFTER loading
       require('which-key').setup()
--
       -- Document existing key chains
       require('which-key').register {
         ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
         ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
         ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
        ['<leader>f'] = { name = '[F]ind', _ = 'which_key_ignore' },
        ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
        ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
        ['<leader>h'] = { name = 'Git [H]unk', _ = 'which_key_ignore' },
      }
       -- visual mode
       require('which-key').register({
         ['<leader>h'] = { 'Git [H]unk' },
       }, { mode = 'v' })
     end,
   },

 -- LSP (language server
  { 'williamboman/mason.nvim', lazy = true},
  {'williamboman/mason-lspconfig.nvim', lazy = true},
  {'VonHeikemen/lsp-zero.nvim', lazy = true, branch = 'v3.x'},
  { 'neovim/nvim-lspconfig',lazy = true },
  -- Autocompletion
  {'hrsh7th/nvim-cmp', lazy = true},
  {'hrsh7th/cmp-nvim-lsp', lazy = true},
  {'L3MON4D3/LuaSnip', lazy = true},
  {'mfussenegger/nvim-lint', lazy = true},
 -- 'sbdchd/neoformat',
})
