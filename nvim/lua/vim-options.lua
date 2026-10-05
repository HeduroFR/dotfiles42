vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.showmode = false
vim.opt.colorcolumn = "80"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.expandtab = true
  end,
})

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 8
vim.opt.swapfile = false
vim.opt.updatetime = 250
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.cmd("syntax on")

vim.opt.wrap = false
vim.opt.linebreak = true
