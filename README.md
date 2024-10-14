<h1 align="center">
  anchor.nvim
</h1>

<p align="center">
  <b>Anchor.nvim is a simple Neovim plugin that allows users to drop, navigate, and manage anchors (bookmarks) within the current buffer. These anchors can be used as quick-access markers to move between different parts of a file.</b>
</p>

## Features

- **Drop Anchors**: Add anchors at specific lines.
- **Remove Anchors**: Remove anchors from specific lines or all at once.
- **Navigate Anchors**: Move to the next anchor from the current cursor position.
- **List Anchors**: See a list of all current anchors with line numbers.

## Installation

With [Lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  'paetinspier/anchor.nvim',
  config = function()
    require('anchor')
  end
}

```

## Usage

Anchor.nvim provides the following commands:

- **:Anchor DropAnchor** - Drops an anchor at the current line.
- **:Anchor RemoveAnchor** - Removes an anchor from the current line.
- **:Anchor RemoveAllAnchors** - Removes all anchors from the current buffer.
- **:Anchor PullAnchor** - Navigates to the next anchor, if present.
- **:Anchor LocateAnchors** - Lists all anchors in the current buffer with line numbers.

Each command can be executed from the command line or mapped to keybindings for quick access.

### Commands Overview

For this section, a **table** format organizes command names and descriptions in a structured way:

```markdown
## Commands Overview

| Command                    | Description                               |
| -------------------------- | ----------------------------------------- |
| `:Anchor DropAnchor`       | Drop an anchor at the current line.       |
| `:Anchor RemoveAnchor`     | Remove an anchor from the current line.   |
| `:Anchor RemoveAllAnchors` | Remove all anchors in the current buffer. |
| `:Anchor PullAnchor`       | Move the cursor to the next anchor.       |
| `:Anchor LocateAnchors`    | List all anchors with line numbers.       |
```
