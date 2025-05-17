return {
  "hrsh7th/nvim-cmp", -- 1️⃣ Main completion engine

  dependencies = {    -- 2️⃣ Plugins that add features to nvim-cmp
    "hrsh7th/cmp-nvim-lsp",     -- LSP completion source
    "hrsh7th/cmp-buffer",       -- Suggest words from current buffer
    "hrsh7th/cmp-path",         -- File path suggestions
    "L3MON4D3/LuaSnip",         -- Snippet engine
    "saadparwaiz1/cmp_luasnip", -- Connect snippets to nvim-cmp
    "rafamadriz/friendly-snippets",
  },

  opts = function()   -- 3️⃣ Configuration function
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    require("luasnip.loaders.from_vscode").lazy_load()

    return {
      snippet = {  -- 4️⃣ Snippet expansion
        expand = function(args)
          luasnip.lsp_expand(args.body)  -- expands the snippet
        end,
      },

      sources = {  -- 5️⃣ Where suggestions come from
        { name = "nvim_lsp" },  -- LSP (Language Server Protocol)
        { name = "buffer" },    -- Words from current file
        { name = "path" },      -- Paths like ./folder/file
        { name = "luasnip" },   -- Snippets
      },

      mapping = cmp.mapping.preset.insert({  -- 6️⃣ Keyboard keys for completion menu
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
    }
  end,
}

