local M = {}

function M.get(opts)
  local variant = opts.variant or "night"

  if variant == "day" then
    local bg = opts.transparent and "NONE" or "#e0c79a"

    return {
      bg = bg,          -- golden parchment
      bg_alt = "#ead9b8", -- sun-bleached curtain cream
      bg_soft = "#d6bb86", -- folded map / warm paper shadow

      fg = "#4a3928",   -- sepia-brown ink
      fg_dim = "#6a5742",
      fg_muted = "#8a775f",

      gold = "#c6922e", -- treasure/map gold
      sand = "#d7b15c",

      rust = "#9e633d", -- warm leather/wood
      coral = "#b87862", -- muted salmon, not pink
      red = "#9f4b44",

      plum = "#6d5b73",
      violet = "#8570a0",

      blue = "#6f8798", -- washed denim
      cyan = "#6f9f97", -- faded teal
      aqua = "#86b6ab",

      green = "#5c6f43", -- dark fern green
      lime = "#8ea06b",

      yellow = "#d7ad45",
      orange = "#c97b34",

      diff_add = "#d7decb",
      diff_delete = "#e2c9c2",
      diff_change = "#d4dae6",
      diff_text = "#c2ccde",

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
