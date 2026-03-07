local M = {}

function M.get(opts)
  local variant = opts.variant or "night"

  -- DAY (Treasure Map)
  if variant == "day" then
    local bg = opts.transparent and "NONE" or "#d9b06a"

    return {
      -- parchment layers
      bg = bg,          -- main parchment
      bg_alt = "#e7c993", -- lighter sunlit parchment
      bg_soft = "#bf9554", -- fold / aged shadow

      -- base text / ink
      fg = "#24170d", -- darkest readable ink
      fg_dim = "#4b3723",
      fg_muted = "#705538",
      ink = "#1a1008",

      -- accents
      gold = "#f0ca69", -- use sparingly
      sand = "#d19d50",
      rust = "#8a4c24",
      coral = "#b35d33",

      -- treasure map reds
      red = "#b1252f",
      burgundy = "#7f1d26",

      -- nautical / denim blues
      blue = "#214d78",
      cyan = "#2f6f78",
      aqua = "#4f8d8f",

      -- expedition greens
      green = "#3d5729",
      lime = "#607d44",

      -- secondary warm notes
      yellow = "#f2cf71",
      orange = "#c8732b",

      -- UI helper colors
      diff_add = "#d7e0c9",
      diff_delete = "#e7c6c2",
      diff_change = "#d7ddea",
      diff_text = "#c7d1e6",

      white = "#fff1d8", -- chalk / paper highlight

      none = "NONE",
    }
  end

  -- CAVE
  if variant == "cave" then
    local bg = opts.transparent and "NONE" or "#16110d"

    return {
      bg = bg,
      bg_alt = "#211913",
      bg_soft = "#2b2119",

      fg = "#d8c3a1",
      fg_dim = "#aa9477",
      fg_muted = "#7f6c56",
      ink = "#0f0c09",

      gold = "#d2a33a",
      sand = "#b99257",
      rust = "#8f4f2a",
      coral = "#a85f3d",

      red = "#9a3f32",
      burgundy = "#7d3430",

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

  -- NIGHT
  local bg = opts.transparent and "NONE" or "#141923"

  return {
    bg = bg,
    bg_alt = "#1a2230",
    bg_soft = "#212c3d",

    fg = "#e7dcc2",
    fg_dim = "#bcae90",
    fg_muted = "#8f856f",
    ink = "#11161f",

    gold = "#d7a94b",
    sand = "#caa56b",
    rust = "#b86b43",
    coral = "#d97b66",

    red = "#c85d5d",
    burgundy = "#8a4451",

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
