local _ = require("maurin.keybinds.function-utils")

map("n", "<leader>u", function()
	require("undotree").toggle()
end)
