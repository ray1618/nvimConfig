local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fa', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pa', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)


-- Sneltoets toewijzen aan Telescope file_browser
vim.keymap.set('n', '<Leader>ff', ':Telescope file_browser<CR>', { noremap = true, silent = true })

-- filebrowser
require("telescope").setup()
require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap(
  "n",
  "<space>fb",
  ":Telescope file_browser<CR>",
  { noremap = true }
)

-- open file_browser with the path of the current buffer
vim.api.nvim_set_keymap(
  "n",
  "<space>fbb",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)
