return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    opts.options.theme = "oc-2"
    opts.sections.lualine_z = {}
    table.insert(opts.options.disabled_filetypes.statusline, "snacks_layout_box")
  end,
}
