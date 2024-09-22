return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- Import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- Enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- List of servers for mason to install
			ensure_installed = {
				"html", -- html
				"bashls", -- bash
				-- "asp_grep", -- C
				"cssls", -- css
				"asm_lsp", -- asm
				"tailwindcss", -- css
				"lua_ls", -- lua
				"pyright", -- python
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier
				"stylua", -- lua
				"isort", -- python
				"black", -- python
				"asmfmt", -- asm
				"pylint",
				"eslint_d",
			},
		})
	end,
}
