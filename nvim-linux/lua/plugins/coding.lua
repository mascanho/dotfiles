local WIDE_HEIGHT = 40

return {
	-- Create annotations with one keybind, and jump your cursor in the inserted annotation
	{
		"danymat/neogen",
		event = "VeryLazy",
		keys = {
			{
				"<leader>cc",
				function()
					require("neogen").generate({})
				end,
				desc = "Neogen Comment",
			},
		},
		opts = { snippet_engine = "luasnip" },
	},

	{
		"folke/ts-comments.nvim",
		opts = {},
		event = "VeryLazy",
		enabled = vim.fn.has("nvim-0.10.0") == 1,
	},

	-- Incremental rename
	-- {
	-- 	"smjonas/inc-rename.nvim",
	-- 	cmd = "IncRename",
	-- 	config = true,
	-- },

	-- Refactoring tool
	-- {
	-- 	"ThePrimeagen/refactoring.nvim",
	-- 	keys = {
	-- 		{
	-- 			"<leader>r",
	-- 			function()
	-- 				require("refactoring").select_refactor()
	-- 			end,
	-- 			mode = "v",
	-- 			noremap = true,
	-- 			silent = true,
	-- 			expr = false,
	-- 		},
	-- 	},
	-- 	opts = {},
	-- },

	-- Go forward/backward with square brackets
	-- {
	-- 	"echasnovski/mini.bracketed",
	-- 	event = "BufReadPost",
	-- 	config = function()
	-- 		local bracketed = require("mini.bracketed")
	-- 		bracketed.setup({
	-- 			file = { suffix = "" },
	-- 			window = { suffix = "" },
	-- 			quickfix = { suffix = "" },
	-- 			yank = { suffix = "" },
	-- 			treesitter = { suffix = "n" },
	-- 		})
	-- 	end,
	-- },
	--
	-- Better increase/descrease
	-- {
	-- 	"monaqa/dial.nvim",
	--    -- stylua: ignore
	--    keys = {
	--      { "<C-a>", function() return require("dial.map").inc_normal() end, expr = true, desc = "Increment" },
	--      { "<C-x>", function() return require("dial.map").dec_normal() end, expr = true, desc = "Decrement" },
	--    },
	-- 	config = function()
	-- 		local augend = require("dial.augend")
	-- 		require("dial.config").augends:register_group({
	-- 			default = {
	-- 				augend.integer.alias.decimal,
	-- 				augend.integer.alias.hex,
	-- 				augend.date.alias["%Y/%m/%d"],
	-- 				augend.constant.alias.bool,
	-- 				augend.semver.alias.semver,
	-- 				augend.constant.new({ elements = { "let", "const" } }),
	-- 			},
	-- 		})
	-- 	end,
	-- },

	{
		"simrat39/symbols-outline.nvim",
		keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
		cmd = "SymbolsOutline",
		opts = {
			position = "right",
		},
	},

	-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
	-- {
	-- 	"numToStr/Comment.nvim",
	-- 	opts = {
	-- 		-- add any options here
	-- 	},
	-- 	lazy = false,
	-- },

	-- Codeium

	{
		"Exafunction/codeium.vim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		commit = "289eb724e5d6fab2263e94a1ad6e54afebefafb2",
		event = "VeryLazy",
		config = function()
			-- Change '<C-g>' here to any keycode you like.
			vim.keymap.set("i", "<C-g>", function()
				return vim.fn["codeium#Accept"]()
			end, { expr = true })
			vim.keymap.set("i", "<c-;>", function()
				return vim.fn["codeium#CycleCompletions"](1)
			end, { expr = true })
			vim.keymap.set("i", "<c-,>", function()
				return vim.fn["codeium#CycleCompletions"](-1)
			end, { expr = true })
			vim.keymap.set("i", "<c-x>", function()
				return vim.fn["codeium#Clear"]()
			end, { expr = true })
		end,
	},

	-- Prisma Code Highlight
	{ "prisma/vim-prisma", event = "VeryLazy" },

	-- COC NEOVIM
	-- { "neoclide/coc.nvim", branch = "release" },
}
