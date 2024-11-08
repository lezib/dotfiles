return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function ()
		local opts = { noremap = true, silent = true, desc = "which_key_ignore" }

        local keymap = vim.keymap

        keymap.set("n", "<leader>ma", ':lua require("harpoon.mark").add_file()<CR>', { desc="add file"})
        keymap.set("n", "<leader>ms", ':lua require("harpoon.ui").nav_prev()<CR>', { desc="goto prev file"})
        keymap.set("n", "<leader>md", ':lua require("harpoon.ui").nav_next()<CR>', { desc="goto next file"})
        keymap.set("n", "<leader>mf", ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { desc="toggle_quick_menu"})
        keymap.set("n", "<leader>1", ':lua require("harpoon.ui").nav_file(1)<CR>', opts)
        keymap.set("n", "<leader>2", ':lua require("harpoon.ui").nav_file(2)<CR>', opts)
        keymap.set("n", "<leader>3", ':lua require("harpoon.ui").nav_file(3)<CR>', opts)
        keymap.set("n", "<leader>4", ':lua require("harpoon.ui").nav_file(4)<CR>', opts)
        keymap.set("n", "<leader>5", ':lua require("harpoon.ui").nav_file(5)<CR>', opts)
        keymap.set("n", "<leader>6", ':lua require("harpoon.ui").nav_file(6)<CR>', opts)
        keymap.set("n", "<leader>7", ':lua require("harpoon.ui").nav_file(7)<CR>', opts)
        keymap.set("n", "<leader>8", ':lua require("harpoon.ui").nav_file(8)<CR>', opts)
        keymap.set("n", "<leader>9", ':lua require("harpoon.ui").nav_file(9)<CR>', opts)
        keymap.set("n", "<leader>0", ':lua require("harpoon.ui").nav_file(0)<CR>', opts)
    end
}
