return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true, -- LazyVim will call .setup(opts) automatically
		opts = {
			-- optional plugin settings
			contrast = "hard",
			italic = {
				strings = true,
				comments = true,
				operators = false,
				folds = true,
			},
		},
		init = function()
			vim.cmd("colorscheme gruvbox")
		end,
	}

}
