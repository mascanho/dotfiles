return {
	"stevearc/oil.nvim",
	opts = {},
	config = function()
		require("oil").setup({
			float = {
				max_width = 50,
				max_height = 20,
			},
		})
	end,
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
}
