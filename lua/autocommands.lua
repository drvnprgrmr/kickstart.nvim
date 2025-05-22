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

-- cursor line
-- local cursor_line = vim.api.nvim_create_augroup('CursorLine', { clear = true })
-- vim.api.nvim_create_autocmd('WinEnter', {
--   desc = 'Set cursorline on enter',
--   command = 'setlocal cursorline',
--   group = cursor_line,
-- })
-- vim.api.nvim_create_autocmd('WinLeave', {
--   desc = 'Set cursorline on enter',
--   command = 'setlocal nocursorline',
--   group = cursor_line,
-- })
--

-- auto insert some boiler plate code to new files
local boiler_plate = vim.api.nvim_create_augroup('BoilerPlate', { clear = true })
vim.api.nvim_create_autocmd('BufNewFile', {
  pattern = '*.cpp',
  -- todo: find a better implementation
  command = '0r ~/.config/nvim-kickstart/lua/boilerplate.cpp',
  desc = 'Add boilerplate code for cpp files.',
  group = boiler_plate,
})
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
