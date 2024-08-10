-- Unable nerd Font
vim.g.have_nerd_font = true

-- Make lines numbers relative
vim.opt.number = true
vim.opt.relativenumber = true

-- enable mouse mode
vim.opt.mouse = 'a'

-- Don't show the mode
vim.opt.showmode = true

-- Save undo history
vim.opt.undofile = true

-- Sync clipboard OS and Neovim
-- See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace charactes in the editor.
-- See `:help 'list'`
-- See `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = {tab = '» ', trail = '·', nbsp = '␣'}

-- Show which line your cursor is on
vim.opt.cursorline = true

-- x offset
vim.opt.scrolloff = 7

-- test
vim.o.tabstop = 2 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting
