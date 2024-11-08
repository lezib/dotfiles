local map = vim.keymap.set

-- NOTE : remap to name the space in wich-key
map("n", "<leader>e", "", { desc = "File Explorer" })
map("n", "<leader>f", "", { desc = "Fuzzy Finder" })
map("n", "<leader>x", "", { desc = "Trouble #TODO" })

-- NOTE : remap Window
map("n", "<leader>a", "", { desc = "Windows"} )
map("n", "<leader>at", ":terminal<CR>a",	{ desc = "Terminal" })
map("n", "<leader>ao", ":only<CR>",					{ desc = "Only current" })
map("n", "<leader>av", ":vsplit<CR>",				{ desc = "Vsplit" })
map("n", "<leader>as", ":split<CR>",				{ desc = "Hsplit" })
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

-- NOTE : navigation in multiple buffers
map("n", "<leader>u", "<cmd>lua require('undotree').toggle()<cr>", {desc = "Undotree"})
map("n", "<leader>ah", "<C-w>h")
map("n", "<leader>aj", "<C-w>j")
map("n", "<leader>ak", "<C-w>k")
map("n", "<leader>al", "<C-w>l")
map("n", "<leader>aH", "<C-w>H")
map("n", "<leader>aJ", "<C-w>J")
map("n", "<leader>aK", "<C-w>K")
map("n", "<leader>aL", "<C-w>L")

-- NOTE : remap mouvements==
map("n", "<C-d>", "<C-d> zz")
map("n", "<C-u>", "<C-u> zz")

-- NOTE : remap copy in clipboard
map("n", "<leader>y", '"+Y')
map("v", "<leader>y", '"+y')
map("n", "<leader>d", '"+D')
map("v", "<leader>d", '"+D')

-- NOTE : remap file Explorer
map("n", "<leader>ee", "<cmd>Oil --float<CR>",{ desc = "Open" })
map("n", "<leader>eh", "<cmd>bprev<CR>",	{ desc = "prev buffer" })
map("n", "<leader>el", "<cmd>bnext<CR>",	{ desc = "next buffer" })
map("n", "<leader>er", "<cmd>bdelete!<CR>",	{ desc = "next buffer" })

-- NOTE : remap déplacement de lignes
map("n", "H", "J")
map("n", "<A-k>", ":m -2<CR>==",		{ desc="Move l up"})
map("n", "<A-j>", ":m +1<CR>==",		{ desc="Move l down"})
map("v", "<A-k>", ":m '<-2<CR>gv=gv",	{ desc="Move select up"})
map("v", "<A-j>", ":m '>+1<CR>gv=gv",	{ desc="Move select up"})

-- NOTE : remap pratique
map("t", "<Esc>", "<C-\\><C-n>")
map("n", "<leader>k", "zz",				{ desc = "Center view" })
map("n", "G", "Gzz",					{ desc = "Go full down"})
map("n", "<C-h>", vim.lsp.buf.hover,	{ desc = "analyse under cursor"})
-- =a{ indentation entre les {}
map("i", "<C-BS>", "<Esc>dbxa",				{ desc = "delete whole word"}) -- use ctrl-Backspace to delete the whole word in insert mode

-- NOTE : remap folding
map("n", "<leader>s", "",									{ desc = "Fold" })
map("n", "<leader>st", "za",								{ desc = "toggle fold" })
map("n", "<leader>s{", "f{zf%",								{ desc = "fold {}" })
map("n", "<leader>sf", "<cmd>set foldmethod=indent<CR>",	{ desc = "fold over indent" })
