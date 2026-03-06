local M = {}

function M.get(opts)
  local variant = opts.variant or "night"

  if variant == "day" then
    local bg = opts.transparent and "NONE" or "#efe2b8"

    return {
      bg          = bg,        -- yellowed treasure map
      bg_alt      = "#e4d5a8", -- aged parchment shadow
      bg_soft     = "#d8c79a",
      fg          = "#5b4632", -- sepia ink
      fg_dim      = "#7a644d",
      fg_muted    = "#9a8667",
      gold        = "#b88b2f",
      sand        = "#c59b63",
      rust        = "#a86a43",
      coral       = "#c7725f",
      red         = "#b45b5b",
      plum        = "#7d668a",
      violet      = "#9277b0",
      blue        = "#6b89a8",
      cyan        = "#4f908b",
      aqua        = "#68aea3",
      green       = "#768c58",
      lime        = "#91ab68",
      yellow      = "#d2ae58",
      orange      = "#c98245",
      diff_add    = "#d8e2cc",
      diff_delete = "#e8d0cf",
      diff_change = "#d8dded",
      diff_text   = "#c9d3ea",
      none        = "NONE",
    }
  end

  local bg = opts.transparent and "NONE" or "#141923"

  return {
    bg          = bg,        -- midnight cave blue
    bg_alt      = "#1a2230", -- stormy shoreline
    bg_soft     = "#212c3d",
    fg          = "#e7dcc2", -- parchment
    fg_dim      = "#bcae90",
    fg_muted    = "#8f856f",
    gold        = "#d7a94b", -- pirate gold
    sand        = "#caa56b",
    rust        = "#b86b43", -- attic wood / leather
    coral       = "#d97b66",
    red         = "#c85d5d",
    plum        = "#6f4f7d", -- adventure-night purple
    violet      = "#8d6bb8",
    blue        = "#5f87b3", -- moonlit coast
    cyan        = "#5da7a0", -- sea glass teal
    aqua        = "#7ac3b8",
    green       = "#7c9a62", -- moss / map ink
    lime        = "#9fbd73",
    yellow      = "#e0c16f",
    orange      = "#d98c4a",
    diff_add    = "#213229",
    diff_delete = "#3a2225",
    diff_change = "#2a3145",
    diff_text   = "#394766",
    none        = "NONE",
  }
end

return M
