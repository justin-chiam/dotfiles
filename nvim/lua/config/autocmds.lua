-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Re-fit the explorer when the command line row comes or goes.
--
-- With `nvim <dir>` the explorer is laid out at startup, while 'cmdheight' is
-- still 1. noice then attaches its cmdline UI, which drops 'cmdheight' to 0:
-- the sidebar split grows by a row but snacks leaves its floating list at the
-- old height, so a strip of the sidebar's border colour shows underneath.
vim.api.nvim_create_autocmd("OptionSet", {
  group = vim.api.nvim_create_augroup("explorer_refit", { clear = true }),
  pattern = { "cmdheight", "laststatus" },
  callback = function()
    vim.schedule(function()
      for _, picker in ipairs(Snacks.picker.get({ source = "explorer" })) do
        picker.layout:update()
      end
    end)
  end,
})
