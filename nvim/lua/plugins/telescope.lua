return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = {
          ".node_modules/",
          ".venv/"
        }
      }
    })

    vim.keymap.set("n", "<C-p>", builtin.find_files, {})
  end
}

