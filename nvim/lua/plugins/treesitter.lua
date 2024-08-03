return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {
        "css",
        "csv",
        "dockerfile",
        "elixir",
        "helm",
        "html",
        "java",
        "javascript",
        "json",
        "kotlin",
        "lua",
        "nginx",
        "ruby",
        "sql",
        "terraform",
        "typescript",
        "yaml",
      },
      sync_install = true,
      highlight = { enabled = true },
      indent = { enabled = true },
    })
  end,
}
