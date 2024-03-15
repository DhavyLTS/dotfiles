return {
	"akinsho/toggleterm.nvim",
	config = function ()
		require("toggleterm").setup {
			open_mapping = [[<c-p>]],
			direction = "float",
		}
	end
}
