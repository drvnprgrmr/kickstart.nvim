-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Set window title
vim.opt.title = true

-- Deal with tabs
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true

-- Spelling
vim.opt.spell = true
vim.opt.spelllang = { 'en_us', 'en_uk', 'cjk' }

-- Keep fold column open up till the 4th level
vim.opt.foldcolumn = 'auto:4'

-- Fold based on syntax highlighting
-- vim.opt.foldmethod = 'syntax' -- Not working yet

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode only in visual mode
vim.opt.mouse = 'v'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Don't wrap lines
vim.opt.wrap = false

-- Stop search at the end of file
vim.opt.wrapscan = false

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Increase mapped sequence wait time
vim.opt.timeoutlen = 1500

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 20

-- Minimal number of screen lines to keep to the left and right the cursor.
vim.opt.sidescrolloff = 20

-- Set highlight on search
vim.opt.hlsearch = true

-- Enable truecolor support
vim.opt.termguicolors = true

vim.diagnostic.config { virtual_text = false, float = { source = true, border = 'single' } }

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
