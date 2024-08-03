return {
  "David-Kunz/gen.nvim",
  config = function()
    local gen = require("gen")
    gen.setup({
      model = "codellama:7b",
      display_mode = "split",
    })
  end,
}
