local M = {}

local defaults = {
  transparent = false,
  italic_comments = true,
}

M.options = vim.deepcopy(defaults)

function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", {}, defaults, opts or {})
end

function M.load(variant)
  local opts = vim.deepcopy(M.options)
  opts.variant = variant or "night"

  local palette = require("goonies.palette").get(opts)
  require("goonies.highlights").apply(palette, opts)
end

return M
