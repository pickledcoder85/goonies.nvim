local M = {}

function M.get(opts)
  local variant = opts.variant or "night"

  if variant == "day" then
    local bg = opts.transparent and "NONE" or "#e8d9a8"

    return {
      bg = bg,         -- aged treasure map
      bg_alt = "#dccb97", -- parchment shadow
      bg_soft = "#d2c089",
      fg = "#4a3b28",  -- sepia ink
      fg_dim = "#6a593f",
      fg_muted = "#8a7858",
      gold = "#b48a2a",
      sand = "#c7a864",
      rust = "#8f5c36",
      coral = "#a76544",
      red = "#8f4a4a",
      plum = "#6b5679",
      violet = "#8269a3",
      blue = "#5f7f9c",
      cyan = "#4a8a83",
      aqua = "#63a69c",
      green = "#6c8350",
      lime = "#869e60",
      yellow = "#caa94f",
      orange = "#b97736",
      diff_add = "#d9e1c3",
      diff_delete = "#e2c6c3",
      diff_change = "#d5d9ea",
      diff_text = "#c3cbe5",
      none = "NONE",
    }
  end

  local bg = opts.transparent and "NONE" or "#141923"

  return {
    bg = bg,          -- midnight cave blue
    bg_alt = "#1a2230", -- stormy shoreline
    bg_soft = "#212c3d",
    fg = "#e7dcc2",   -- parchment
    fg_dim = "#bcae90",
    fg_muted = "#8f856f",
    gold = "#d7a94b", -- pirate gold
    sand = "#caa56b",
    rust = "#b86b43", -- attic wood / leather
    coral = "#d97b66",
    red = "#c85d5d",
    plum = "#6f4f7d", -- adventure-night purple
    violet = "#8d6bb8",
    blue = "#5f87b3", -- moonlit coast
    cyan = "#5da7a0", -- sea glass teal
    aqua = "#7ac3b8",
    green = "#7c9a62", -- moss / map ink
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
