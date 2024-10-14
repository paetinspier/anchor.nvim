local anchors = require("anchor.anchors")

vim.api.nvim_create_user_command("DropAnchor", anchors.drop_anchor, {})
vim.api.nvim_create_user_command("RemoveAnchor", anchors.remove_anchor, {})
vim.api.nvim_create_user_command("PullAnchor", anchors.pull_next_anchor, {})
vim.api.nvim_create_user_command("LocateAnchors", anchors.locate_anchors, {})
vim.api.nvim_create_user_command("RemoveAllAnchors", anchors.remove_all_anchors, {})
