local M = {}

function M.get(opts)
  local variant = opts.variant or "night"

  if variant == "day" then
    local bg = opts.transparent and "NONE" or "#efe2c4"

    return {
      bg = bg,          -- sun-bleached curtain cream
      bg_alt = "#e3cca6", -- golden parchment
      bg_soft = "#d6b88a", -- folded map shadow

      fg = "#4b3928",   -- sepia-brown ink
      fg_dim = "#6a5742",
      fg_muted = "#8b755b",

      gold = "#c7962d", -- treasure-map gold
      sand = "#d8b35f",

      rust = "#9d633d", -- leather / wood
      coral = "#b6735b", -- dusty warm salmon
      red = "#9e4a42",

      plum = "#6b5a72",
      violet = "#826e9c",

      blue = "#6f8799", -- washed denim
      cyan = "#6d9b95", -- faded teal
      aqua = "#86b6ae",

      green = "#586c43", -- dark fern green
      lime = "#869b66",

      yellow = "#d6ad45",
      orange = "#c77a33",

      diff_add = "#dbe3d1",
      diff_delete = "#e6d0ca",
      diff_change = "#d8dee8",
      diff_text = "#c7d1e0",

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

    none = "NONE",
  }
end

return M
