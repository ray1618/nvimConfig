-- make prettier use the local prettier config
vim.g.neoformat_try_node_exe = 1

vim.keymap.set("n", "<leader>pr", ":Neoformat prettier<CR>")

-- format on save
vim.cmd [[
  autocmd BufWritePre *.js Neoformat
  autocmd BufWritePre *.css Neoformat
  autocmd BufWritePre *.scss Neoformat
  autocmd BufWritePre *.css Neoformat
  autocmd BufWritePre *.ts Neoformat
  autocmd BufWritePre *.html Neoformat
]]
