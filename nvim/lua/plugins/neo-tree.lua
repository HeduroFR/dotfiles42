return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local function open_pdf(state)
      local node = state.tree:get_node()
      return require("pdf_viewer").open(node and node.path)
    end

    require("neo-tree").setup({
      filesystem = {
        follow_current_file = { enabled = true },
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        window = {
          mappings = {
            ["<cr>"] = function(state)
              if not open_pdf(state) then
                require("neo-tree.sources.filesystem.commands").open(state)
              end
            end,
            ["<2-LeftMouse>"] = function(state)
              if not open_pdf(state) then
                require("neo-tree.sources.filesystem.commands").open(state)
              end
            end,
            ["P"] = function(state)
              if not open_pdf(state) then
                vim.notify("This action is only available for PDF files", vim.log.levels.WARN)
              end
            end,
          },
        },
      },
      window = {
        width = 35,
      },
    })

    for _, group in ipairs({
      "NeoTreeNormal",
      "NeoTreeNormalNC",
      "NeoTreeCursorLine",
      "NeoTreeSignColumn",
      "NeoTreeStatusLine",
      "NeoTreeStatusLineNC",
      "NeoTreeVertSplit",
      "NeoTreeWinSeparator",
      "NeoTreeEndOfBuffer",
    }) do
      local highlight = vim.api.nvim_get_hl(0, { name = group, link = false })
      highlight.bg = "NONE"
      vim.api.nvim_set_hl(0, group, highlight)
    end

    vim.keymap.set("n", "<leader>n", "<cmd>Neotree toggle<cr>",
      { desc = "Toggle file explorer" })
  end,
}
