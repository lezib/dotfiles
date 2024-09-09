local map = vim.keymap.set

-- remap to name the space in wich-key
map("n", "<leader>e", "", { desc = "File Explorer" })
map("n", "<leader>f", "", { desc = "Fuzzy Finder" })
map("n", "<leader>x", "", { desc = "Trouble #TODO" })

map("n", "<left>",  '<cmd>echo "Use h to move !!"<CR>')
map("n", "<right>", '<cmd>echo "Use l to move !!"<CR>')
map("n", "<up>",    '<cmd>echo "Use k to move !!"<CR>')
map('n', '<down>',  '<cmd>echo "Use j to move !!"<CR>')

-- remap Window
map("n", "<leader>a", "", { desc = "Windows"} )
map("n", "<leader>ar", function()
    if not pcall(vim.cmd, ":wq") then
        vim.cmd(":wq!")
    else
        print "Save & escape !!!"
    end
end,
    {desc = "Save & close the current window" })

map("n", "<leader>aw", function()
    if not pcall(vim.cmd, ":w") then
        print "cannot save !"
    else
        print "File saved !"
    end

end,
    {desc = "Save the current window" })

map("n", "<leader>ae", function()
    if not pcall(vim.cmd, ":q") then
        vim.cmd(":q!")
    else
        print "Escape !!!"
    end
end,
    {desc = "Save & close the current window" })

map("n", "<leader>at", ":vsplit<CR>:terminal<CR>a",  { desc = "Open a terminal" })
map("n", "<leader>ao", ":only<CR>",                      { desc = "Only keep this window" })
map("n", "<leader>av", ":vsplit<CR>",                    { desc = "Vertical split" })
map("n", "<leader>as", ":split<CR>",                     { desc = "Horizontal split" })

map("n", "<leader>ah", "<C-w>h")
map("n", "<leader>aj", "<C-w>j")
map("n", "<leader>ak", "<C-w>k")
map("n", "<leader>al", "<C-w>l")
map("n", "<leader>aH", "<C-w>H")
map("n", "<leader>aJ", "<C-w>J")
map("n", "<leader>aK", "<C-w>K")
map("n", "<leader>aL", "<C-w>L")

-- remap mouvements==
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- remap copy in clipboard
-- map("n", "<leader>y", '"+Y')
-- map("v", "<leader>y", '"+y')
-- map("n", "<leader>d", '"+D') 
-- map("v", "<leader>d", '"+D')

-- remap déplacement de lignes
map("n", "H", "J")
map("n", "<A-k>", ":m -2<CR>==",      { desc="Move line up"})
map("n", "<A-j>", ":m +1<CR>==",      { desc="Move line down"})
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc="Move selection up"})
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc="Move selection up"})

-- remap pratique
map("t", "<Esc>", "<C-\\><C-n>")
map("n", "<leader>k", "zz",          { desc = "Center view" })
map("n", "G", "Gzz",                 { desc = "Go full down"})
map("n", "<C-h>", vim.lsp.buf.hover, { desc = "analyse under cursor"})
-- =a{ indentation entre les {}
map("i", "<C-BS>", "<C-w>", { desc = "delete whole word"}) -- use ctrl-Backspace to delete the whole word in insert mode
