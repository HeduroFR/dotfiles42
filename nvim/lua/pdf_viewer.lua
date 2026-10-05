local M = {}

local function pdf_pane_is_open(wezterm)
	local pane_id = vim.g.pdf_viewer_pane_id
	if not pane_id then
		return false
	end

	local panes = vim.fn.system({ wezterm, "cli", "list", "--format", "json" })
	if vim.v.shell_error ~= 0 then
		return false
	end

	local ok, decoded = pcall(vim.json.decode, panes)
	if not ok then
		return false
	end

	for _, pane in ipairs(decoded) do
		if tostring(pane.pane_id) == tostring(pane_id) then
			return true
		end
	end

	vim.g.pdf_viewer_pane_id = nil
	return false
end

function M.open(path)
	if not path or vim.fn.isdirectory(path) == 1 then
		return false
	end

	if vim.fn.fnamemodify(path, ":e"):lower() ~= "pdf" then
		return false
	end

	local tdf = vim.fn.exepath("tdf")
	if tdf == "" then
		local cargo_tdf = vim.fn.expand("~/.cargo/bin/tdf")
		if vim.fn.executable(cargo_tdf) == 1 then
			tdf = cargo_tdf
		end
	end

	if tdf == "" then
		vim.notify("Install tdf to read PDFs in WezTerm", vim.log.levels.ERROR)
		return true
	end

	local wezterm = (vim.env.WEZTERM_EXECUTABLE_DIR or "") .. "/wezterm"
	if vim.fn.executable(wezterm) ~= 1 then
		wezterm = "wezterm"
	end

	if vim.fn.executable(wezterm) ~= 1 then
		vim.notify("WezTerm CLI could not be found", vim.log.levels.ERROR)
		return true
	end

	if pdf_pane_is_open(wezterm) then
		vim.notify("A PDF pane is already open", vim.log.levels.INFO)
		return true
	end

	local page_width = math.max(30, math.floor(vim.o.lines * 1.4))
	local pane_id = vim.fn.system({
		wezterm,
		"cli",
		"split-pane",
		"--right",
		"--cells",
		tostring(page_width),
		"--cwd",
		vim.fn.fnamemodify(path, ":h"),
		"--",
		tdf,
		path,
		"--max-wide",
		"1",
	})

	if vim.v.shell_error ~= 0 or not pane_id:match("%d+") then
		vim.notify("Could not open the PDF pane in WezTerm", vim.log.levels.ERROR)
	else
		vim.g.pdf_viewer_pane_id = pane_id:match("%d+")
	end

	return true
end

return M
