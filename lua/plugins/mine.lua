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

	{
		"saghen/blink.cmp",
		opts = {
			fuzzy = { prebuilt_binaries = { extra_curl_args = { "--ssl-no-revoke" } } },
		},
		sources = {
			per_filetype = {
				codecompanion = { "codecompanion" },
			}
		},
	},

	{
		"github/copilot.vim",
	},

	{
		"olimorris/codecompanion.nvim",
		version = "^19.0.0",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		opts = {
			-- adapters = { http = { opts = { allow_insecure = true } } },
		},
	},
	{
		'MeanderingProgrammer/render-markdown.nvim',
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },            -- if you use the mini.nvim suite
		dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
		ft = { 'markdown', 'codecompanion' }
	},
	{
		"HakonHarnes/img-clip.nvim",
		opts = {
			filetypes = {
				codecompanion = {
					prompt_for_file_name = false,
					template = "[Image]($FILE_PATH)",
					use_absolute_path = true,
				},
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
