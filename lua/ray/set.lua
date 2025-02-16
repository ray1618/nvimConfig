-- Default settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showcmd = true
vim.opt.title = true
vim.opt.showmode = true
vim.opt.clipboard = "unnamedplus" -- copy yanks to system clipboard

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true 

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.scrolloff = 4
vim.opt.colorcolumn = "150"

vim.opt.cursorline = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'` 
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
