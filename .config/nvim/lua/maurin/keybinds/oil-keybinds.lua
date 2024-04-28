local _ = require("maurin.keybinds.function-utils")

map("n", "-", "<cmd>Oil<CR>")
map("n", "6", function()
	require("oil").toggle_float()
end)
