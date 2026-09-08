return {
  {
    "sphamba/smear-cursor.nvim",
    cond = vim.env.KITTY_WINDOW_ID == nil and not vim.g.neovide,
    event = "VeryLazy",
    opts = {
      never_draw_over_target = true,
      hide_target_hack = true,

      filetypes_disabled = {
        "snacks_dashboard",
        "snacks_picker_list",
        "snacks_picker_input",
        "snacks_notif",
        "TelescopePrompt",
        "TelescopeResults",
      },
    },
  },

  {
    "folke/snacks.nvim",
    opts = {
      scroll = {
        animate = {
          duration = { step = 10, total = 250 },
          easing = "linear",
        },
        animate_repeat = {
          delay = 100,
          duration = { step = 10, total = 250 },
          easing = "linear",
        },
      },
    },
  },
}
