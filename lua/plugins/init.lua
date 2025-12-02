-- This file returns a table of all plugins
-- Each file in lua/plugins/ returns a plugin spec or table of specs
-- lazy.nvim automatically loads all .lua files in this folder

return {
  -- Colorscheme
  {
    "shaunsingh/nord.nvim",
    priority = 1000,
    config = function()
      vim.g.nord_disable_background = true
      vim.cmd("colorscheme nord")
    end,
  },

  -- Import other plugin configs
  { import = "plugins.treesitter" },
  { import = "plugins.lsp" },
  { import = "plugins.completion" },
  { import = "plugins.editor" },
  { import = "plugins.neo-tree" },
  { import = "plugins.lang-go" },
  -- Add more language configs here:
  -- { import = "plugins.lang-python" },
}
