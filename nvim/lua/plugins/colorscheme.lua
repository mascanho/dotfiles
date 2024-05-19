return {
	{
		"cdmill/neomodern.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("neomodern").setup({
				-- optional configuration here
			})
			require("neomodern").load()
		end,
	},
	{ "e-q/okcolors.nvim", name = "okcolors" },
	{
		"dgox16/oldworld.nvim",
		lazy = false,
		priority = 1000,
		config = true,
		transparent = true,
	},
	{
		"myypo/borrowed.nvim",
	},
	{
		"b0o/lavi.nvim",
		dependencies = { "rktjmp/lush.nvim" },
	},
	{
		"kevinm6/kurayami.nvim",
		event = "VimEnter", -- load plugin on VimEnter or
		-- lazy = false,                  --   don't lazy load plugin
		---Use this config to override some highlights
		-- config = function(_, opts)
		---override highlights passing table
		---@usage
		-- opts.override = {
		--  Number = { fg = "#015a60" }
		-- }
		-- require("kurayami").setup(opts)
		-- end
	},
	{ "dasupradyumna/midnight.nvim", lazy = false, priority = 1000 },
	{
		"keiyakeiya/PapilioDehaanii.vim",
	},
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		priority = 0,
		opts = function()
			return {
				transparent = true,
			}
		end,
	},
	-- Themes
	{
		"rose-pine/neovim",
		-- name = "rose-pine",
		-- lazy = false,
		-- priority = 1000,
		-- config = function()
		-- 	vim.cmd("colorscheme rose-pine")
		-- end,
	},
	{
		"xero/miasma.nvim",
		lazy = false,
	},
	{ "sekke276/dark_flat.nvim" },
	{ "kvrohit/mellow.nvim" },
	{ "ramojus/mellifluous.nvim" },
	{ "kvrohit/rasmus.nvim" },
	-- { 'rmehri02/onenord.nvim' },
	{ "Everblush/nvim" },
	{ "ldelossa/vimdark" },
	{ "kvrohit/substrata.nvim" },
	{ "yashguptaz/calvera-dark.nvim" },
	{ "sainnhe/everforest" },
	{ "rafamadriz/neon" },
	{ "Abstract-IDE/Abstract-cs" },
	{
		"sainnhe/gruvbox-material",
	},
	{
		"olimorris/onedarkpro.nvim",
	},
	{ "projekt0n/github-nvim-theme", version = "v0.0.7" },
	{ "marko-cerovac/material.nvim" },
	{ "Allianaab2m/penumbra.nvim" },
	{ "ful1e5/onedark.nvim" },
	{ "rebelot/kanagawa.nvim" },
	{ "nyoom-engineering/oxocarbon.nvim" },
	{ "arturgoms/moonbow.nvim" },
	{ "EdenEast/nightfox.nvim" }, -- lazy
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "folke/tokyonight.nvim" },
	{ "sainnhe/edge" },
	{ "sainnhe/sonokai" },
	{ "bluz71/vim-nightfly-colors" },
	{ "bluz71/vim-moonfly-colors" },
	{ "bluz71/vim-nightfly-guicolors" },
	{ "NLKNguyen/papercolor-theme" },
	{ "Mofiqul/dracula.nvim" },
	{ "romainl/Apprentice" },
	{
		"mcchrish/zenbones.nvim",
		-- Optionally install Lush. Allows for more configuration or extending the colorscheme
		-- If you don't want to install lush, make sure to set g:zenbones_compat = 1
		-- In Vim, compat mode is turned on as Lush only works in Neovim.
		requires = "rktjmp/lush.nvim",
	},
	{ "embark-theme/vim", as = "embark" },
	{
		"rockyzhang24/arctic.nvim",
		dependencies = { "rktjmp/lush.nvim" },
		name = "arctic",
		branch = "main",
		priority = 1000,
	},
	{
		"nyoom-engineering/oxocarbon.nvim",
	},

	-- Lua

	{
		"olivercederborg/poimandres.nvim",
		lazy = false,
		-- priority = 1000,
		config = function()
			require("poimandres").setup({
				-- leave this setup function empty for default config
				-- or refer to the configuration section
				-- for configuration options
			})
		end,
	},
	{
		"AlexvZyl/nordic.nvim",
		lazy = false,
		priority = 1000,
		-- config = function()
		--     require 'nordic' .load()
		-- end
	},
	{
		"luisiacc/gruvbox-baby",
	},
	{
		"nyngwang/nvimgelion",
		config = function()
			-- do whatever you want for further customization~
		end,
	},

	{ "cryptomilk/nightcity.nvim", version = "*" },
}
