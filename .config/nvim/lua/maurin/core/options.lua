-------------------------------------------------------------------------
-- Unable nerd Font
vim.g.have_nerd_font = true

-- Make lines numbers relative
vim.opt.number = true
vim.opt.relativenumber = true

-- enable mouse mode
vim.opt.mouse = 'a'

-- Don't show the mode
-- vim.opt.showmode = false

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

-- set tab to 4 colums
vim.opt.tabstop = 4        -- Définit la largeur d'une tabulation à 4 colonnes
vim.opt.shiftwidth = 4     -- Définit la largeur d'une indentation automatique à 4 colonnes
vim.opt.expandtab = false  -- Utilise des caractères de tabulation plutôt que des espaces

-- set a line to prevent more than 80 colums
vim.opt.colorcolumn = "80"
