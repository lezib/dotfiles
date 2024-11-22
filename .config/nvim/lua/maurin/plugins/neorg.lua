return {
	"nvim-neorg/neorg",
	version = "*", -- Pin Neorg to the latest stable release
	lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
	dependencies = { "nvim-lua/plenary.nvim", "nvim-neorg/neorg-telescope" },
	ft = "norg",
	priority = 1000,
	config = function()
		require("neorg")
		require("neorg").setup {
		load = {
				["core.defaults"] = {}, -- Loads default behaviour
				["core.concealer"] = {}, -- Adds pretty icons to your documents
				["core.qol.todo_items"] = {}, -- Adds pretty lists
				["core.dirman"] = {} -- Manages Neorg workspaces
			}
		}

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter", "BufNewFile", "BufRead", "UIEnter", "WinEnter", "TabEnter", "VimEnter" }, {
			pattern = { "*" },
			callback = function()
			end
		})
	end
}
