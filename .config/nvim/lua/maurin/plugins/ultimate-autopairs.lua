return {
	'altermo/ultimate-autopair.nvim',
	event={'InsertEnter','CmdlineEnter'},
	branch='v0.6', --recommended as each new version will have breaking changes
	opts={
		fastwarp={
			multi=true,
			{},
			{ faster=true,map='<C-A-e>',cmap='<C-A-e>' },
		}
	},
	config = function()
		local autopair = require("ultimate-autopair")
		autopair.setup({
			cr = {
				-- Fonction personnalisée pour gérer <CR>
				enable = true,
				map = "<CR>",
				func = function(type)
					local line = vim.api.nvim_get_current_line()
					local col = vim.fn.col('.')
					local char_before = line:sub(col - 1, col - 1)
					local char_after = line:sub(col, col)

					-- Si entre `{}` ou `[]`, désactive la gestion automatique
					if (char_before == '{' and char_after == '}') or (char_before == '[' and char_after == ']') then
						return autopair.feedkeys("<ESC>hxi<CR><ESC>")
					end

					-- Sinon, utiliser le comportement normal
					return autopair.feedkeys(type.map or "<CR>")
				end
			}
		})
	end
}
-- return {
--     "windwp/nvim-autopairs",
--     event = { "InsertEnter" },
--     dependencies = {
--         "hrsh7th/nvim-cmp",
--     },
--     config = function()
--         -- import nvim-autopairs
--         local autopairs = require("nvim-autopairs")
--
--         -- configure autopairs
--         autopairs.setup({
--             check_ts = true, -- enable treesitter
--             ts_config = {
--                 lua = { "string" }, -- don't add pairs in lua string treesitter nodes
--                 javascript = { "template_string" }, -- don't add pairs in javscript template_string treesitter nodes
--                 java = false, -- don't check treesitter on java
--             },
--         })
--
--         -- import nvim-autopairs completion functionality
--         local cmp_autopairs = require("nvim-autopairs.completion.cmp")
--
--         -- import nvim-cmp plugin (completions plugin)
--         local cmp = require("cmp")
--
--         -- make autopairs and completion work together
--         cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
--     end,
-- }
--
