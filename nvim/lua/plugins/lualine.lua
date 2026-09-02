return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- remove the clock LazyVim puts in the far-right section
    opts.sections.lualine_z = {}
  end,
}
