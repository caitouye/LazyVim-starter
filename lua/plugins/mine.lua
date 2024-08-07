return {

	-- kevinhwang91/nvim-bqf
	-- smoka7/multicursors.nvim
	-- uiofgh/rsync.nvim
	-- uiofgh/dashboard-nvim
	-- natecraddock/workspaces.nvim
	-- nvim-neorg/neorg
	-- kevinhwang91/nvim-ufo
	-- AckslD/nvim-neoclip.lua
	-- debugloop/telescope-undo.nvim
	-- akinsho/toggleterm.nvim
	-- wellle/targets.vim

	-- extras
	-- stevearc/aerial.nvim
	-- NvChad/nvim-colorizer.lua	to		echasnovski/mini.hipatterns
	-- RRethy/vim-illuminate

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

	{
		"TimUntersberger/neogit",
		event = "VeryLazy",
		dependencies = {
			"nvim-lua/plenary.nvim",         -- required
			"sindrets/diffview.nvim",        -- optional - Diff integration
		},
		opts = {
			integrations = {
				diffview = true,
			},
		},
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
