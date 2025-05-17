return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {
    indent = {
      char = "┊",  -- or "│", "⋅", etc.
      highlight = { "IblIndent" },
    },
    scope = {
      enabled = true,
      show_start = true,
      show_end = false,
      highlight = { "IblScope" },
    },
  },
}

