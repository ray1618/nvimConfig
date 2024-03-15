-- see https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support for more info for windows install
require 'nvim-treesitter.install'.compilers = { vim.fn.getenv('CC'), "cc", "gcc", "clang", "cl", "zig" }
require'nvim-treesitter.configs'.setup {
  prefer_git = false,
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "html", "angular", "javascript", "typescript", "lua"  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,
	-- disable = { "html"}, -- treesitter will mess up my panda theme with highlight on
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
