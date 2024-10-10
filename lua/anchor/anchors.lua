local M = {}

M.anchors = {}

function M.drop_anchor()
	-- get current line number
	local line = vim.fn.line(".")

	if not vim.tbl_contains(M.anchors, line) then
		table.insert(M.anchors, line)
		table.sort(M.anchors)
		print("anchor dropped at line " .. line)
	else
		print("anchor already dropped")
	end
end

function M.remove_anchor()
	-- get current line number
	local line = vim.fn.line(".")

	if vim.tbl_contains(M.anchors, line) then
		for i, anchor in ipairs(M.anchors) do
			if anchor == line then
				table.remove(M.anchors, i)
				print("removed anchor at line " .. line)
				return
			end
		end
	end
end

function M.pull_next_anchor()
	local line = vim.fn.line(".")

	if M.anchors[1] == nil then
		print("no anchors dropped")
		return
	end

	for _, anchor in ipairs(M.anchors) do
		if anchor > line then
			vim.api.nvim_win_set_cursor(0, { anchor, 0 })
			print("pulled anchor at line " .. line)
			return
		end
	end

	print("you have sailed past all anchors")
end

function M.locate_anchors()
	for i, anchor in ipairs(M.anchors) do
		print("anchor " .. i .. " at " .. anchor)
	end
end

return M
