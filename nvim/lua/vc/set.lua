vim.opt.shortmess = vim.opt.shortmess + {
    c = true, -- Do not show completion messages in command line
    F = true, -- Do not show file info when editing a file, in the command line
    W = true, -- Do not show "written" in command line when writing
    I = true, -- Do not show intro message when starting Vim
}

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.laststatus = 1

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
--vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

--vim.opt.termguicolors = true

vim.opt.scrolloff = 2
vim.opt.signcolumn = "no"
--vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
vim.opt.clipboard=unnamedplus
