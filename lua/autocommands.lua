--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})


-- auto save view
local auto_save_view = vim.api.nvim_create_augroup('AutoSaveView', { clear = true })
vim.api.nvim_create_autocmd('BufWinLeave', {
  pattern = '?*.*', -- files must have extension in name and should exist
  desc = "Save 'view' when leaving the file.",
  command = 'mkview',
  group = auto_save_view,
})
vim.api.nvim_create_autocmd('BufWinEnter', {
  pattern = '?*.*', -- files must have extension in name and should exist
  desc = "Load 'view' when opening a file.",
  command = 'silent! loadview',
  group = auto_save_view,
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
