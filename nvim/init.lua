-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.lsp.config("ruff", {
  init_options = {
    settings = {
      -- Ruff language server settings go here
    },
  },
})

vim.lsp.enable("ruff")
