require("config.lazy")
require("config.lsp")


vim.o.number = true                -- Show line numbers
vim.o.relativenumber = true       -- Relative line numbers
vim.o.tabstop = 2                 -- Number of spaces for a tab
vim.o.shiftwidth = 2              -- Number of spaces for auto-indent
vim.o.expandtab = true            -- Convert tabs to spaces
vim.o.smartindent = true          -- Smart auto-indenting
vim.o.autoindent = true           -- Keep indent from previous line
vim.o.wrap = false                -- No line wrap
-- vim.o.cursorline = true           -- Highlight current line
vim.o.scrolloff = 8               -- Minimum lines to keep above/below cursor
vim.o.signcolumn = "yes"          -- Always show the sign column
vim.o.termguicolors = true        -- Enable true color support
vim.o.hlsearch = false            -- Disable persistent highlight on search
vim.o.incsearch = true            -- Incremental search
vim.o.updatetime = 300            -- Faster completion
vim.o.timeoutlen = 500            -- Time before a mapped key completes
-- vim.o.splitbelow = true           -- Split horizontal window below
-- vim.o.splitright = true           -- Split vertical window to the right
vim.opt.clipboard:append("unnamedplus") -- Use system clipboard

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help Tags" })
