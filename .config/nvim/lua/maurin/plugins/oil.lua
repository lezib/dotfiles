return {
	'stevearc/oil.nvim',
	--- @module 'oil'
	--- @type oil.SetupOpts
	opts = {

		float = {
			-- Padding around the floating window
			padding = 3,
			max_width = 100,
			max_height = 100,
			border = "rounded",
			win_options = {
				winblend = 0,
			}
		},
		-- Optional dependencies
		-- dependencies = { { "echasnovski/mini.icons", opts = {} } },
		dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	}
}
