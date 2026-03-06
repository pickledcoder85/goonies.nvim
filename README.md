# goonies-night

A Neovim colorscheme inspired by 1985 adventure-movie nostalgia:
- moonlit Oregon coastline blues
- pirate-gold highlights
- attic-map parchment foregrounds
- cave-plum shadows
- warm rust and wood accents

## Install

### lazy.nvim
```lua
{
  dir = "~/path/to/goonies-night",
  name = "goonies-night",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("goonies-night")
  end,
}
```

### packer.nvim
```lua
use({
  "~/path/to/goonies-night",
  config = function()
    vim.cmd("colorscheme goonies-night")
  end,
})
```

## Palette vibe
Backgrounds are meant to feel like a candlelit cave and wet Pacific Northwest night.
Foreground text is parchment-like rather than stark white, so it feels older and warmer.
Search, match, and important UI moments use pirate-gold accents.
