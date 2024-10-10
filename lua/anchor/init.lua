local anchors = require("anchor.anchors")

vim.api.nvim_create_user_command("DropAnchor", anchors.drop_anchor, {})
vim.api.nvim_create_user_command("RemoveAnchor", anchors.remove_anchor, {})
vim.api.nvim_create_user_command("PullAnchor", anchors.pull_next_anchor, {})
vim.api.nvim_create_user_command("LocateAnchors", anchors.locate_anchors, {})

-- vim.api.nvim_set_keymap(
-- 	"n",
-- 	"<Leader>pa",
-- 	':lua require("anchor.anchors").pull_next_anchor()<CR>',
-- 	{ noremap = true, silent = true }
-- )
--
-- vim.api.nvim_set_keymap(
-- 	"n",
-- 	"<Leader>da",
-- 	':lua require("anchor.anchors").drop_anchor()<CR>',
-- 	{ noremap = true, silent = true }
-- )
--
-- vim.api.nvim_set_keymap(
-- 	"n",
-- 	"<Leader>ra",
-- 	':lua require("anchor.anchors").remove_anchor()<CR>',
-- 	{ noremap = true, silent = true }
-- )
