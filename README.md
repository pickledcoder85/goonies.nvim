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

### goonies-night

<div style="display:flex;gap:6px;margin-top:6px;margin-bottom:10px">
<div style="width:40px;height:40px;background:#141923"></div>
<div style="width:40px;height:40px;background:#1a2230"></div>
<div style="width:40px;height:40px;background:#212c3d"></div>
<div style="width:40px;height:40px;background:#e7dcc2"></div>
<div style="width:40px;height:40px;background:#d7a94b"></div>
<div style="width:40px;height:40px;background:#5f87b3"></div>
<div style="width:40px;height:40px;background:#5da7a0"></div>
<div style="width:40px;height:40px;background:#7c9a62"></div>
<div style="width:40px;height:40px;background:#d98c4a"></div>
</div>

Moonlit cave blues with parchment foregrounds and pirate-gold accents.

---

### goonies-day

<div style="display:flex;gap:6px;margin-top:6px;margin-bottom:10px">
<div style="width:40px;height:40px;background:#e1d2a3"></div>
<div style="width:40px;height:40px;background:#d4c28f"></div>
<div style="width:40px;height:40px;background:#c9b57b"></div>
<div style="width:40px;height:40px;background:#3f3124"></div>
<div style="width:40px;height:40px;background:#c89b3c"></div>
<div style="width:40px;height:40px;background:#5f768a"></div>
<div style="width:40px;height:40px;background:#6a7c50"></div>
<div style="width:40px;height:40px;background:#c7752e"></div>
<div style="width:40px;height:40px;background:#8e4f2a"></div>
</div>

Dusty treasure-map parchment with sepia ink and brass highlights.

---

### goonies-cave

<div style="display:flex;gap:6px;margin-top:6px;margin-bottom:10px">
<div style="width:40px;height:40px;background:#16110d"></div>
<div style="width:40px;height:40px;background:#211913"></div>
<div style="width:40px;height:40px;background:#2b2119"></div>
<div style="width:40px;height:40px;background:#d8c3a1"></div>
<div style="width:40px;height:40px;background:#d2a33a"></div>
<div style="width:40px;height:40px;background:#c9782f"></div>
<div style="width:40px;height:40px;background:#8f4f2a"></div>
<div style="width:40px;height:40px;background:#4d7b74"></div>
<div style="width:40px;height:40px;background:#64724b"></div>
</div>

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

---

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

Example variants:

```
goonies-night
goonies-day
goonies-cave
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
