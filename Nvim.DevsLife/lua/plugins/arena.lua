return {
	"dzfrias/arena.nvim",
	event = "BufWinEnter",
	-- Calls `.setup()` automatically
	config = {
		window = {
			width = 60,
			height = 10,
		},
		max_items = 20,
	},
}
