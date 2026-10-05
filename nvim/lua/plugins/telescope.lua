return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local previewers = require("telescope.previewers")
			local default_buffer_previewer_maker = previewers.buffer_previewer_maker
			local pdf_preview_jobs = {}
			local function buffer_previewer_maker(filepath, bufnr, opts)
				if filepath:lower():match("%.pdf$") then
					local pdftotext = vim.fn.exepath("pdftotext")
					if pdftotext == "" then
						vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, {
							"PDF preview requires Poppler.",
							"Install it with: brew install poppler",
						})
						vim.api.nvim_set_option_value("filetype", "text", { buf = bufnr })
						return
					end

					local previous_job = pdf_preview_jobs[bufnr]
					if previous_job then
						vim.fn.jobstop(previous_job.id)
					end

					local request = {}
					local output = {}
					pdf_preview_jobs[bufnr] = request
					vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "Extraction du texte du PDF…" })

					request.id = vim.fn.jobstart({
						pdftotext,
						"-f",
						"1",
						"-l",
						"2",
						"-layout",
						filepath,
						"-",
					}, {
						stdout_buffered = true,
						on_stdout = function(_, data)
							output = data or {}
						end,
						on_exit = function(_, exit_code)
							vim.schedule(function()
								if pdf_preview_jobs[bufnr] ~= request or not vim.api.nvim_buf_is_valid(bufnr) then
									return
								end

								pdf_preview_jobs[bufnr] = nil
								if exit_code ~= 0 then
									output = { "Could not extract text from this PDF." }
								else
									for index, line in ipairs(output) do
										output[index] = line:gsub("\f", "")
									end
									if #output == 0 or (#output == 1 and output[1] == "") then
										output = { "No extractable text on the first two pages." }
									end
								end

								vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, output)
								vim.api.nvim_set_option_value("filetype", "text", { buf = bufnr })
							end)
						end,
					})
					return
				end

				default_buffer_previewer_maker(filepath, bufnr, opts)
			end

			require("telescope").setup({
				defaults = {
					buffer_previewer_maker = buffer_previewer_maker,
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			local builtin = require("telescope.builtin")
			local actions = require("telescope.actions")
			local action_state = require("telescope.actions.state")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader><leader>", function()
				builtin.oldfiles({
					attach_mappings = function(prompt_bufnr)
						actions.select_default:replace(function()
							local selection = action_state.get_selected_entry()
							if not selection then
								return
							end

							if selection.path and selection.path:lower():match("%.pdf$") then
								actions.close(prompt_bufnr)
								require("pdf_viewer").open(selection.path)
							else
								actions.file_edit(prompt_bufnr)
							end
						end)
						return true
					end,
				})
			end, {})

			require("telescope").load_extension("ui-select")
		end,
	},
}
