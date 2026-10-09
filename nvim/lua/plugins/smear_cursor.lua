return {
	"sphamba/smear-cursor.nvim",
	event = "VeryLazy",
	opts = {
		smear_between_buffers = false,
		smear_between_neighbor_lines = false,
		smear_insert_mode = false,
		legacy_computing_symbols_support = false,
		cursor_color = "#64D8FF",
		stiffness = 0.8,
		trailing_stiffness = 0.6,
		stiffness_insert_mode = 0.7,
		trailing_stiffness_insert_mode = 0.7,
		damping = 0.95,
		damping_insert_mode = 0.95,
		distance_stop_animating = 0.5,
		particles_enabled = false,
	},
}
