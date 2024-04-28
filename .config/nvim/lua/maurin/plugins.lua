local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

local function contains(table, element)
	for _, value in pairs(table) do
		if value == element then return true end
	end

	return false
end


if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
	{
		'nvim-tree/nvim-web-devicons',

		-- NOTE: neovim a des évènements, y'en a tout plein le plugin charger
		-- dès que l'évènement est trigger (la plupart du temps ça sera VeryLazy)
		event = "VeryLazy",
	},

	{
		'karb94/neoscroll.nvim',
		event = "VeryLazy",

		-- NOTE: `config = true`
		-- <=> `opts = {}`
		-- <=> `config = function() require("neoscroll").setup({})`
		config = true,
	},

	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true;
	},

	{
		"kylechui/nvim-surround",
		event = "VeryLazy",
		config = true,

		-- NOTE: la dernière version dispo sur le repo
		version = "*",
	},

	{
		'nvim-treesitter/nvim-treesitter',
		event = "VeryLazy",
		build = ":TSUpdate",

		-- NOTE: neovim va d'abord charger les plugins avec une grande priorité
		priority = 1000,
	},

	{
		"NvChad/nvterm",
		event = "VeryLazy",
		config = true,
	},

	{
		'google/executor.nvim',
		cmd = "Executor",

		-- NOTE: `lazy = true` veut dire que le plugin ne sera pas chargé
		-- tant que tu ne lanceras pas la commande `Executor`
		lazy = true,
	},

	{ -- For lua and nvim completion and docs
		'folke/neodev.nvim',

		-- NOTE: pareil que `lazy = true`, mais dès que tu rentres dans
		-- un fichier lua, ça chargeras le plugin
		ft = "lua",
	},

	{
		'stevearc/oil.nvim',

		-- NOTE: les dépendances du plugin, sans ces plugins supplémentaires
		-- le plugin ne peut pas fonctionner
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	{
		"williamboman/mason.nvim",
		lazy = true,
		cmd = "Mason",
		build = ":MasonUpdate",
		dependencies = { "williamboman/mason-lspconfig.nvim" },
	},

	{
		"folke/todo-comments.nvim",
		event = "UIEnter",
		config = true,
	},

	{
		"catppuccin/nvim",
		as = "catpuccin",
	},


	-- AUTOCOMPLETION --
	{ 'neovim/nvim-lspconfig',   event = "BufReadPost", },
	{ 'hrsh7th/lspkind-nvim',    event = "BufReadPost", },

	{ 'hrsh7th/nvim-cmp',        event = "InsertEnter", },
	{ 'hrsh7th/cmp-nvim-lsp',    event = "InsertEnter", },
	{ 'hrsh7th/cmp-buffer',      event = "InsertEnter", },
	{ 'hrsh7th/cmp-path',        event = "InsertEnter", },
	{ 'hrsh7th/vim-vsnip',       event = "InsertEnter", },
	{ 'hrsh7th/vim-vsnip-integ', event = "InsertEnter", },
	{ 'hrsh7th/cmp-cmdline',     event = "VeryLazy", },
	-- -------------- --

	{
		"jiaoshijie/undotree",
		dependencies = { "nvim-lua/plenary.nvim" },
		event = "VeryLazy",
	},
}

local opts = {}
require("lazy").setup(plugins, opts)
