local M = {}

function M.get(opts)
  local variant = opts.variant or "night"

  if variant == "day" then
    local bg = opts.transparent and "NONE" or "#e3cca6"

    return {
      bg = bg,          -- aged parchment
      bg_alt = "#d9c095", -- darker parchment shadow
      bg_soft = "#cfb584", -- folded paper tone

      fg = "#3b2f23",   -- sepia ink
      fg_dim = "#5a4a39",
      fg_muted = "#7a6a55",

      gold = "#b88b2f", -- antique gold
      sand = "#c59b63",

      rust = "#9e5f3a",
      coral = "#b86a55",
      red = "#a64e4e",

      plum = "#6e5b7a",
      violet = "#8570a3",

      blue = "#5d7388",
      cyan = "#4b7f79",
      aqua = "#5fa59a",

      green = "#6f8052",
      lime = "#8fa463",

      yellow = "#d2ae58",
      orange = "#c67a3b",

      diff_add = "#d8e2cc",
      diff_delete = "#e8d0cf",
      diff_change = "#d8dded",
      diff_text = "#c9d3ea",

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
