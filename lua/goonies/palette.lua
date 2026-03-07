local M = {}

function M.get(opts)
  local variant = opts.variant or "night"

  if variant == "day" then
    local bg = opts.transparent and "NONE" or "#cf9e5b"

    return {
      bg = bg,          -- faded treasure-map orange parchment
      bg_alt = "#ddb170", -- lighter map surface
      bg_soft = "#b98749", -- darker fold/shadow

      fg = "#2f2418",   -- dark ink
      fg_dim = "#4a3927",
      fg_muted = "#6a543b",

      gold = "#e0b44a", -- treasure highlight
      sand = "#d3a15b",

      rust = "#8c4e2b", -- rope / leather
      coral = "#9d5c46",
      red = "#7f2f2d", -- map X / route red

      plum = "#5f3a45", -- muted burgundy-plum
      violet = "#744e63",

      blue = "#253f5a", -- deep nautical ink
      cyan = "#3f6a68",
      aqua = "#5f9088",

      green = "#4e5c36", -- muted expedition green
      lime = "#6d8150",

      yellow = "#e7c15a",
      orange = "#c6722e",

      diff_add = "#d7dfc9",
      diff_delete = "#e1c6be",
      diff_change = "#d4d9e6",
      diff_text = "#c2cce0",

      white = "#f4ead7", -- occasional chalk/ivory emphasis
      ink = "#241b12",   -- darkest script
      burgundy = "#6f2629", -- richer treasure-map mark red

      none = "NONE",
    }
  end

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
      ink = "#0f0c09",
      burgundy = "#7d3a3a",

      none = "NONE",
    }
  end

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
    ink = "#11161f",
    burgundy = "#8a4451",

    none = "NONE",
  }
end

return M
