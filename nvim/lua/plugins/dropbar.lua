return {
  {
    "Bekaboo/dropbar.nvim",
    event = "LazyFile",
    keys = {
      {
        "<leader>;",
        function()
          require("dropbar.api").pick()
        end,
        desc = "Pick Symbols in Winbar",
      },
      {
        "[;",
        function()
          require("dropbar.api").goto_context_start()
        end,
        desc = "Go to Start of Current Context",
      },
      {
        "];",
        function()
          require("dropbar.api").select_next_context()
        end,
        desc = "Select Next Context",
      },
    },
    opts = {
      icons = {
        ui = {
          bar = {
            separator = " › ",
          },
        },
      },
    },
  },
}
