# goonies.nvim

A **Neovim colorscheme inspired by 1980s adventure movies**, especially *The Goonies (1985)*.

The palette draws inspiration from:

- torchlit caves
- pirate treasure gold
- aged parchment maps
- leather, rope, and wood tones
- moonlit Pacific Northwest coastlines

The goal is a warm, nostalgic editing experience that feels like exploring a treasure map in an attic or cave.

---

# Variants

### `goonies-night`

Moonlit adventure tones.

- deep cave blues
- parchment foregrounds
- pirate-gold highlights
- subtle plum shadows

### `goonies-day`

Dusty treasure map daylight.

- aged parchment backgrounds
- sepia ink text
- brass and sand accents
- sunlit map highlights

### `goonies-cave`

Torchlight exploration.

- deep cave browns and shadows
- glowing treasure gold
- warm firelight oranges
- muted stone and leather tones

---

# Palette Preview

## `goonies-night`

| Role | Hex |
|---|---|
| Background | `#141923` |
| Background Alt | `#1a2230` |
| Background Soft | `#212c3d` |
| Foreground | `#e7dcc2` |
| Gold | `#d7a94b` |
| Blue | `#5f87b3` |
| Cyan | `#5da7a0` |
| Green | `#7c9a62` |
| Orange | `#d98c4a` |

Moonlit cave blues with parchment foregrounds and pirate-gold accents.

## `goonies-day`

| Role | Hex |
|---|---|
| Background | `#e1d2a3` |
| Background Alt | `#d4c28f` |
| Background Soft | `#c9b57b` |
| Foreground | `#3f3124` |
| Gold | `#c89b3c` |
| Blue | `#5f768a` |
| Green | `#6a7c50` |
| Orange | `#c7752e` |
| Rust | `#8e4f2a` |

Dusty treasure-map parchment with sepia ink and brass highlights.

## `goonies-cave`

| Role | Hex |
|---|---|
| Background | `#16110d` |
| Background Alt | `#211913` |
| Background Soft | `#2b2119` |
| Foreground | `#d8c3a1` |
| Gold | `#d2a33a` |
| Orange | `#c9782f` |
| Rust | `#8f4f2a` |
| Cyan | `#4d7b74` |
| Green | `#64724b` |

Torch-lit cave shadows with glowing treasure gold and warm firelight.

---

# Installation

## lazy.nvim

### Install from GitHub

```lua
{
  "pickledcoder85/goonies.nvim",
  priority = 1000,
}
```

Then choose a variant:

```lua
vim.cmd.colorscheme("goonies-night")
```

or

```lua
vim.cmd.colorscheme("goonies-day")
```

or

```lua
vim.cmd.colorscheme("goonies-cave")
```

### Local development

```lua
{
  dir = "~/path/to/goonies.nvim",
  name = "goonies.nvim",
  priority = 1000,
}
```

Then:

```lua
vim.cmd.colorscheme("goonies-night")
```

---

# Example Usage

```vim
:colorscheme goonies-night
:colorscheme goonies-day
:colorscheme goonies-cave
```

---

# Philosophy

This theme intentionally avoids stark white text and harsh contrast.

Instead it favors:

- parchment-like foregrounds
- warm gold highlights
- slightly muted colors
- cinematic warmth

The goal is a palette that feels **adventurous and nostalgic**, not clinical.

---

# Recommended UI

Works well with:

- LazyVim
- Treesitter
- LSP semantic tokens
- Telescope
- blink.cmp
- NvimTree
- indent-blankline / ibl

---

# Screenshots

*(coming soon)*

Suggested screenshot files:

- `screenshots/goonies-night.png`
- `screenshots/goonies-day.png`
- `screenshots/goonies-cave.png`

Example markdown once added:

```md
## goonies-night
![goonies-night](./screenshots/goonies-night.png)

## goonies-day
![goonies-day](./screenshots/goonies-day.png)

## goonies-cave
![goonies-cave](./screenshots/goonies-cave.png)
```

---

# Future Ideas

Possible additions:

- `goonies-dusk` variant
- optional parchment transparency
- torchlight search highlights
- cinematic desaturation option
- subtle film-grain inspired UI tweaks

---

*"Goonies never say die."*
