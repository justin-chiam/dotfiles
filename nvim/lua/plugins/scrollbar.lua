return {
  "petertriho/nvim-scrollbar",
  branch = "refactor/v2",
  dependencies = { "lewis6991/gitsigns.nvim" },
  event = "BufReadPost",
  opts = {
    exclude = {
      filetypes = {
        snacks_dashboard = true,
        snacks_picker_list = true,
        snacks_picker_input = true,
        snacks_notif = true,
        lazy = true,
        mason = true,
        trouble = true,
      },
    },
    providers = {
      cursor = false,
      search = false,
      marks = false,
      gitsigns = true,
    },
    scrollbar = {
      visibility = "active",
      layout = { columns = { { "thumb", "marks" } } },
      thumb = {
        blend = 0,
        highlight = { bg = "#989eb6" },
      },
    },
  },
}
