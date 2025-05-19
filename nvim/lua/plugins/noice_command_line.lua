return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    require("noice").setup({
      cmdline = {
        enabled = true,
        view = "cmdline_popup", -- or "cmdline"
        format = {
          cmdline = { icon = "" },
          search_down = { icon = " " },
          search_up = { icon = " " },
        },
      },
      messages = {
        enabled = false,
      },
      presets = {
        bottom_search = false,
        command_palette = true,
        long_message_to_split = true,
      },
    })
  end,
}

