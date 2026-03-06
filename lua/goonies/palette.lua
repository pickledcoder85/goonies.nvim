local M = {}

function M.get(opts)
  local variant = opts.variant or "night"

  if variant == "day" then
    local bg = opts.transparent and "NONE" or "#b78c49"

    return {
      bg = bg,          -- aged bronze poster
      bg_alt = "#d3a963", -- warm gold highlight
      bg_soft = "#9e763d", -- darker bronze shadow

      fg = "#2f2418",   -- dark ink
      fg_dim = "#4b3b29",
      fg_muted = "#6b5740",

      gold = "#e2b24c", -- treasure highlight
      sand = "#d3a15a",

      rust = "#7f4728", -- rope/leather
      coral = "#9b5c42",
      red = "#7d342d",

      plum = "#574a63",
      violet = "#6e5a8e",

      blue = "#546a7c", -- washed denim
      cyan = "#4f847c",
      aqua = "#6ea79d",

      green = "#4d5f3a", -- fern green
      lime = "#758b56",

      yellow = "#e5bb52",
      orange = "#c06f2d",

      diff_add = "#d4ddc7",
      diff_delete = "#e0c5bf",
      diff_change = "#d2d7e3",
      diff_text = "#c0cae0",

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
