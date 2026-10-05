return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({})

			require("nvim-treesitter").install({
      "c",
      "python",
    })

			vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "c",
        "python",
      },
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })

			vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "c",
        "python",
	  },
      callback = function()
        vim.wo[0][0].foldmethod = "expr"
        vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
				vim.wo[0][0].foldenable = false
      end,
    })
  end,
}
