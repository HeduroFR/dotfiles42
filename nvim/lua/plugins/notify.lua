return {
	"rcarriga/nvim-notify",
	config = function()
		local notify = require("notify")
		notify.setup({ background_colour = "#000000" })

		local function link_highlights()
			local levels = {
				ERROR = "DiagnosticError",
				WARN = "DiagnosticWarn",
				INFO = "DiagnosticInfo",
				DEBUG = "DiagnosticHint",
				TRACE = "DiagnosticHint",
			}

			for level, source in pairs(levels) do
				for _, section in ipairs({ "Border", "Icon", "Title" }) do
					vim.api.nvim_set_hl(0, "Notify" .. level .. section, { link = source })
				end
				vim.api.nvim_set_hl(0, "Notify" .. level .. "Body", { link = "Normal" })
			end
		end

		link_highlights()
		vim.api.nvim_create_autocmd("ColorScheme", { callback = link_highlights })
		vim.notify = notify
	end,
}
