return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "vue",
        "python",
        "html",
        "css"
      },
      highlight = { enable = true },
      ident = { enable = true }
    })
  end
}

