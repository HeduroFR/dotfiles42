return {
	"vyfor/cord.nvim",
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
