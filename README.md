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
