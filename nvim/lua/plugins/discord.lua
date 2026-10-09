return {
	"vyfor/cord.nvim",
	event = "VeryLazy",
	config = function()
		require("cord").setup({
			display = {
				theme = 'minecraft',
				flavor = 'dark',
			},
			advanced = {
				discord = {
					reconnect = {
      					enabled = true,
    				},
  				},
			},
		})
	end,
}
