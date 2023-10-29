
require('vc')
vim.cmd("set clipboard+=unnamedplus")

require('gruvbox').setup({
    disable_background = true
})

function cc(color) 
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

cc()



