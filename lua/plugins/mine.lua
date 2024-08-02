return {

	-- kevinhwang91/nvim-bqf
	-- smoka7/multicursors.nvim
	-- NvChad/nvim-colorizer.lua
	-- uiofgh/rsync.nvim
	-- uiofgh/dashboard-nvim
	-- natecraddock/workspaces.nvim
	-- nvim-neorg/neorg

	{
		"rainzm/flash-zh.nvim",
		event = "VeryLazy",
		dependencies = "folke/flash.nvim",
		keys = {{
			"s",
			mode = {"n", "x", "o"},
			function()
				require("flash-zh").jump({
					chinese_only = false
				})
			end,
			desc = "Flash between Chinese"
		}}
	},
	{
		"folke/flash.nvim",
		keys = {
			-- disable the default flash keymap
			{ "s", mode = { "n", "x", "o" }, false },
		},
	},

	{
		"sindrets/diffview.nvim",
		event = "VeryLazy",
	},

	{
		"mhinz/vim-signify",
	},

	-- {
	-- 	"yamatsum/nvim-cursorline",
	-- 	opts = {
	-- 		cursorline = {
	-- 			enable = true,
	-- 			timeout = 1000,
	-- 			number = false,
	-- 		},
	-- 		cursorword = {
	-- 			enable = true,
	-- 			min_length = 3,
	-- 			hl = { underline = true },
	-- 		},
	-- 	},
	-- },

	-- {
	-- 	"cstsunfu/pounce_zh.nvim",
	-- 	keys = {
	-- 		{ "s", function() require'pounce'.pounce { } end },
	-- 		{ "S", function() require'pounce'.pounce { do_repeat = true } end },
	-- 		{ "s", function() require'pounce'.pounce { } end, mode = "x" },
	-- 		{ "gs", function() require'pounce'.pounce { } end, mode = "o" }, -- 's' is used by vim-surround
	-- 		{ "S", function() require'pounce'.pounce { input = {reg="/"} } end },
	-- 	},
	-- },

}
