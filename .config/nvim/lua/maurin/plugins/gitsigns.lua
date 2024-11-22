return {
	'lewis6991/gitsigns.nvim',
	event = "UIEnter",
	opts = {
		-- https://symbl.cc/en/search/?q=vertical
		signs = {
			add = {
				text = '+'
				-- text = '❙'
			},
			change = {
				text = '~'
				-- text = '❙'
			},
			delete = {
				text = '_',
				-- text = '❙'
			},
			topdelete = {
				text = '‾',
				-- text = '❙',
			},
			changedelete = {
				text = '~',
				-- text = '❙',
			},
		},
	}
}
