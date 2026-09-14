local function exclude()
  return { ".DS_Store", "**/*.dSYM" }
end

return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = { ignored = true, hidden = true, exclude = exclude() },
        files = { ignored = true, hidden = true, exclude = exclude() },
        grep = { hidden = true, exclude = exclude() },
      },
    },
  },
}
