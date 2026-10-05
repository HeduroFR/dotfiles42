return {
  "saravenpi/paper.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local paper = require("paper")
    paper.setup({
      variant = "dark",
      transparent = true,
      italic_comments = true,
      italic_keywords = true,
      bold_functions = true,
    })

    vim.cmd.colorscheme("paper")

    vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#292f38" })
  end,
}
