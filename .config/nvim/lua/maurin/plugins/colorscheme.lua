return {
	{
		"morhetz/gruvbox",
		-- "lmburns/kimbox",
		-- "lezib/kimbox-duck-edition",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- Load the colorscheme here
			vim.cmd([[colorscheme gruvbox]])
			-- vim.cmd([[colorscheme kimbox-duck-edition]])
		end
	},
}
