local function exclude()
  return { ".DS_Store", "**/*.dSYM" }
end

return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = { hidden = true, exclude = exclude() },
        files = { hidden = true, exclude = exclude() },
        grep = { hidden = true, exclude = exclude() },
      },
    },
  },
}
