return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate", 
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "javascript", "typescript", "html", "css", "lua", "bash", "json", "markdown"
      },
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<CR>",
          node_incremental = "<CR>",
          scope_incremental = "<TAB>",
          node_decremental = "<S-CR>",
        },
      },
    })
  end
}

