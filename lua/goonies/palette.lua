local M = {}

function M.get(opts)
  local variant = opts.variant or "night"

  --------------------------------------------------
  -- DAY (Treasure Map)
  --------------------------------------------------

  if variant == "day" then
    local bg = opts.transparent and "NONE" or "#e7c8a0"

    return {

      --------------------------------------------------
      -- parchment backgrounds
      --------------------------------------------------

      bg = bg,
      bg_alt = "#edd3b3",
      bg_soft = "#d6b389",

      --------------------------------------------------
      -- ink colors
      --------------------------------------------------

      fg = "#24180f", -- main ink
      fg_dim = "#4b3626",
      fg_muted = "#6f5741",

      ink = "#1a120a", -- darkest ink

      --------------------------------------------------
      -- treasure / parchment accents
      --------------------------------------------------

      gold = "#d9a441",
      sand = "#cfa06a",

      rust = "#8b4a2a",
      coral = "#c4673d",

      --------------------------------------------------
      -- MAP RED (important)
      --------------------------------------------------

      red = "#b21f2d",   -- bright treasure map red
      burgundy = "#8f1b26", -- deeper route marking

      --------------------------------------------------
      -- nautical blue
      --------------------------------------------------

      blue = "#1f4f7a", -- strong ink blue
      cyan = "#3e7b87",
      aqua = "#5f9ea0",

      --------------------------------------------------
      -- expedition greens
      --------------------------------------------------

      green = "#3f5a2c",
      lime = "#6e8a49",

      --------------------------------------------------
      -- parchment highlights
      --------------------------------------------------

      yellow = "#e4c05a",
      orange = "#c9772f",

      --------------------------------------------------
      -- diff colors
      --------------------------------------------------

      diff_add = "#d9e3cc",
      diff_delete = "#e5c8c5",
      diff_change = "#d4dae8",
      diff_text = "#c7d0e4",

      --------------------------------------------------
      -- highlight accents
      --------------------------------------------------

      white = "#f5ecdb",

      none = "NONE",
    }
  end

  --------------------------------------------------
  -- CAVE THEME
  --------------------------------------------------

  if variant == "cave" then
    local bg = opts.transparent and "NONE" or "#16110d"

    return {
      bg = bg,
      bg_alt = "#211913",
      bg_soft = "#2b2119",

      fg = "#d8c3a1",
      fg_dim = "#aa9477",
      fg_muted = "#7f6c56",

      gold = "#d2a33a",
      sand = "#b99257",

      rust = "#8f4f2a",
      coral = "#a85f3d",
      red = "#9a3f32",

      plum = "#5f4b62",
      violet = "#7b6293",

      blue = "#4b5e6d",
      cyan = "#4d7b74",
      aqua = "#67988f",

      green = "#64724b",
      lime = "#7f9160",

      yellow = "#e0b84d",
      orange = "#c9782f",

      diff_add = "#243126",
      diff_delete = "#3a2320",
      diff_change = "#2d313a",
      diff_text = "#4a4130",

      white = "#efe4cf",

      none = "NONE",
    }
  end

  --------------------------------------------------
  -- NIGHT THEME
  --------------------------------------------------

  local bg = opts.transparent and "NONE" or "#141923"

  return {

    bg = bg,
    bg_alt = "#1a2230",
    bg_soft = "#212c3d",

    fg = "#e7dcc2",
    fg_dim = "#bcae90",
    fg_muted = "#8f856f",

    gold = "#d7a94b",
    sand = "#caa56b",

    rust = "#b86b43",
    coral = "#d97b66",
    red = "#c85d5d",

    plum = "#6f4f7d",
    violet = "#8d6bb8",

    blue = "#5f87b3",
    cyan = "#5da7a0",
    aqua = "#7ac3b8",

    green = "#7c9a62",
    lime = "#9fbd73",

    yellow = "#e0c16f",
    orange = "#d98c4a",

    diff_add = "#213229",
    diff_delete = "#3a2225",
    diff_change = "#2a3145",
    diff_text = "#394766",

    white = "#f2eadb",

    none = "NONE",
  }
end

return M
