require('ray/set')
require('ray/remap')
require('ray/packer')

vim.o.hlsearch = true
vim.highlight.on_yank()
vim.cmd('colorscheme panda')
vim.api.nvim_exec([[
  augroup HighlightOnYank
    autocmd!
    autocmd TextYankPost * lua vim.highlight.on_yank()
  augroup END
]], false)


