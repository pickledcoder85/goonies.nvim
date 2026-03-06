local M = {}

function M.get(opts)
  local variant = opts.variant or "night"

  if variant == "day" then
    local bg = opts.transparent and "NONE" or "#e1d2a3"

    return {
      bg = bg,
      bg_alt = "#d4c28f",
      bg_soft = "#c9b57b",

      fg = "#3f3124",
      fg_dim = "#5e4c37",
      fg_muted = "#7b684f",

      gold = "#c89b3c",
      sand = "#d5b96a",

      rust = "#8e4f2a",
      coral = "#a66242",
      red = "#8f2d2d",

      plum = "#6a566f",
      violet = "#836ca3",

      blue = "#5f768a",
      cyan = "#4d867f",
      aqua = "#69a49a",

      green = "#6a7c50",
      lime = "#869c63",

      yellow = "#d4b24c",
      orange = "#c7752e",

      diff_add = "#d7dfc7",
      diff_delete = "#e0c2bc",
      diff_change = "#d2d6e3",
      diff_text = "#c1c9dc",

      none = "NONE",
    }
  end

  if variant == "cave" then
    local bg = opts.transparent and "NONE" or "#16110d"

    return {
      bg = bg,          -- cave shadow
      bg_alt = "#211913", -- rock wall
      bg_soft = "#2b2119", -- torch falloff

      fg = "#d8c3a1",   -- old parchment in torchlight
      fg_dim = "#aa9477",
      fg_muted = "#7f6c56",

      gold = "#d2a33a", -- treasure glow
      sand = "#b99257",

      rust = "#8f4f2a", -- rope/leather/wood
      coral = "#a85f3d",
      red = "#9a3f32",

      plum = "#5f4b62",
      violet = "#7b6293",

      blue = "#4b5e6d", -- minimal cold cave tone
      cyan = "#4d7b74", -- wet stone / sea hint
      aqua = "#67988f",

      green = "#64724b",
      lime = "#7f9160",

      yellow = "#e0b84d", -- torch core
      orange = "#c9782f", -- flame edge

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
