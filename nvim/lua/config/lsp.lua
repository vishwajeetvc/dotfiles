local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

local cmp_nvim_lsp = require("cmp_nvim_lsp")  -- this comes with nvim-cmp plugin

require("luasnip.loaders.from_vscode").load({
  include = { "html", "css", "javascript", "jsx" },
})

local luasnip = require("luasnip")
luasnip.filetype_extend("javascriptreact", { "html","javascript" })

lspconfig.html.setup({
  capabilities = capabilities,
  filetypes = { "html, javascript" },
})
lspconfig.ts_ls.setup({
  capabilities = capabilities,
  filetypes = { "javascript", "javascriptreact" },
})

lspconfig.cssls.setup({
  capabilities = capabilities,
  filetypes = { "css" },
})
lspconfig.tailwindcss.setup({
	capabilities = capabilities,
	flags = {
		debounce_text_changes = 150,
	},
})
