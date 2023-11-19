return {
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
		name = "rose-pine",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	},
	{
		"xero/miasma.nvim",
		lazy = false,
		priority = 1000,
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
		priority = 1000, -- Ensure it loads first
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
	{ "catppuccino/nvim" },
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
}
