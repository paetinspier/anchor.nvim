local M = {}

M.anchors = {}
vim.fn.sign_define("AnchorSign", { text = "⚓️", texthl = "Error" })

function M.drop_anchor()
	-- get current line number
	local line = vim.fn.line(".")

	if not vim.tbl_contains(M.anchors, line) then
		table.insert(M.anchors, line)
		table.sort(M.anchors)
		print("anchor dropped at line " .. line)

		vim.fn.sign_place(1000 + line, "AnchorGroup", "AnchorSign", vim.fn.bufnr("%"), { lnum = line })
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
				vim.fn.sign_unplace("AnchorGroup", { buffer = vim.fn.bufnr("%"), id = 1000 + line })
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

	vim.api.nvim_win_set_cursor(0, { M.anchors[1], 0 })
	-- print("you have sailed past all anchors")
end

function M.locate_anchors()
	for i, anchor in ipairs(M.anchors) do
		print("anchor " .. i .. " at " .. anchor)
	end
end

return M
