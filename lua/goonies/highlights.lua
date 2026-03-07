local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(c, opts)
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  local variant = opts.variant or "night"
  local is_day = variant == "day"

  vim.g.colors_name = "goonies-" .. variant

  local text_main = is_day and c.ink or c.fg
  local text_dim = c.fg_dim
  local text_muted = c.fg_muted
  local text_blue = c.blue
  local text_red = is_day and c.red or c.burgundy
  local text_green = c.green
  local text_warm = c.rust
  local text_emph = c.white

  local float_bg = c.bg_alt
  local float_border = is_day and c.rust or c.gold
  local cursorline_bg = is_day and c.bg_alt or c.bg_soft
  local visual_bg = is_day and "#efcf86" or c.diff_text
  local pmenu_sel_bg = is_day and c.blue or c.cyan
  local telescope_border = is_day and c.rust or c.gold
  local diag_bg = is_day and c.bg_alt or c.bg_alt

  -- Base editor
  hi("Normal", { fg = text_main, bg = c.bg })
  hi("NormalFloat", { fg = text_main, bg = float_bg })
  hi("FloatBorder", { fg = float_border, bg = float_bg })
  hi("FloatTitle", { fg = text_emph, bg = float_bg, bold = true })
  hi("ColorColumn", { bg = c.bg_soft })
  hi("Conceal", { fg = text_muted })
  hi("Cursor", { fg = c.bg, bg = text_emph })
  hi("lCursor", { fg = c.bg, bg = text_emph })
  hi("CursorIM", { fg = c.bg, bg = text_emph })
  hi("CursorLine", { bg = cursorline_bg })
  hi("CursorColumn", { bg = c.bg_alt })
  hi("Directory", { fg = text_blue, bold = true })
  hi("EndOfBuffer", { fg = c.bg })
  hi("ErrorMsg", { fg = text_red, bold = true })
  hi("VertSplit", { fg = c.bg_soft, bg = c.bg })
  hi("WinSeparator", { fg = c.bg_soft, bg = c.bg })
  hi("Folded", { fg = text_dim, bg = c.bg_soft, italic = true })
  hi("FoldColumn", { fg = text_muted, bg = c.bg })
  hi("SignColumn", { fg = text_muted, bg = c.bg })
  hi("IncSearch", { fg = c.bg, bg = c.orange, bold = true })
  hi("Search", { fg = c.bg, bg = c.yellow, bold = true })
  hi("CurSearch", { fg = c.bg, bg = text_emph, bold = true })
  hi("LineNr", { fg = text_muted })
  hi("CursorLineNr", { fg = text_emph, bold = true })
  hi("MatchParen", { fg = text_emph, bg = c.bg_soft, bold = true })
  hi("ModeMsg", { fg = text_blue, bold = true })
  hi("MoreMsg", { fg = text_blue })
  hi("NonText", { fg = c.bg_soft })
  hi("Pmenu", { fg = text_main, bg = float_bg })
  hi("PmenuSel", { fg = c.white, bg = pmenu_sel_bg, bold = true })
  hi("PmenuSbar", { bg = c.bg_soft })
  hi("PmenuThumb", { bg = text_muted })
  hi("Question", { fg = text_blue })
  hi("QuickFixLine", { bg = c.bg_soft, bold = true })
  hi("SpecialKey", { fg = text_red })
  hi("SpellBad", { sp = text_red, undercurl = true })
  hi("SpellCap", { sp = text_blue, undercurl = true })
  hi("SpellLocal", { sp = c.cyan, undercurl = true })
  hi("SpellRare", { sp = c.burgundy, undercurl = true })
  hi("StatusLine", { fg = text_main, bg = c.bg_soft })
  hi("StatusLineNC", { fg = text_muted, bg = c.bg_alt })
  hi("TabLine", { fg = text_dim, bg = c.bg_alt })
  hi("TabLineFill", { bg = c.bg })
  hi("TabLineSel", { fg = c.bg, bg = text_emph, bold = true })
  hi("Title", { fg = text_emph, bold = true })
  hi("Visual", { bg = visual_bg })
  hi("WarningMsg", { fg = c.orange, bold = true })
  hi("Whitespace", { fg = c.bg_soft })
  hi("WildMenu", { fg = c.bg, bg = text_emph, bold = true })

  -- Syntax
  hi("Comment", { fg = text_muted, italic = opts.italic_comments })
  hi("Constant", { fg = text_warm })
  hi("String", { fg = text_green })
  hi("Character", { fg = text_green })
  hi("Number", { fg = text_warm })
  hi("Boolean", { fg = text_red, bold = true })
  hi("Float", { fg = text_warm })
  hi("Identifier", { fg = text_main })
  hi("Function", { fg = text_blue, bold = true })
  hi("Statement", { fg = text_red, bold = true })
  hi("Conditional", { fg = text_red, bold = true })
  hi("Repeat", { fg = text_red, bold = true })
  hi("Label", { fg = text_emph, bold = true })
  hi("Operator", { fg = text_warm })
  hi("Keyword", { fg = text_red, italic = true })
  hi("Exception", { fg = text_red, bold = true })
  hi("PreProc", { fg = text_warm, bold = true })
  hi("Include", { fg = text_blue })
  hi("Define", { fg = text_red })
  hi("Macro", { fg = text_red })
  hi("PreCondit", { fg = text_warm })
  hi("Type", { fg = text_blue, bold = true })
  hi("StorageClass", { fg = text_blue })
  hi("Structure", { fg = text_blue })
  hi("Typedef", { fg = text_blue, italic = true })
  hi("Special", { fg = text_warm })
  hi("SpecialChar", { fg = text_warm })
  hi("Tag", { fg = text_emph, bold = true })
  hi("Delimiter", { fg = text_dim })
  hi("SpecialComment", { fg = text_muted, italic = true })
  hi("Debug", { fg = text_red })
  hi("Underlined", { underline = true })
  hi("Bold", { bold = true })
  hi("Italic", { italic = true })
  hi("Ignore", { fg = text_muted })
  hi("Error", { fg = text_red, bold = true })
  hi("Todo", { fg = c.bg, bg = text_emph, bold = true })

  -- Diagnostics
  hi("DiagnosticError", { fg = text_red })
  hi("DiagnosticWarn", { fg = c.orange })
  hi("DiagnosticInfo", { fg = text_blue })
  hi("DiagnosticHint", { fg = c.cyan })
  hi("DiagnosticOk", { fg = text_green })
  hi("DiagnosticVirtualTextError", { fg = text_red, bg = diag_bg })
  hi("DiagnosticVirtualTextWarn", { fg = c.orange, bg = diag_bg })
  hi("DiagnosticVirtualTextInfo", { fg = text_blue, bg = diag_bg })
  hi("DiagnosticVirtualTextHint", { fg = c.cyan, bg = diag_bg })
  hi("DiagnosticUnderlineError", { sp = text_red, undercurl = true })
  hi("DiagnosticUnderlineWarn", { sp = c.orange, undercurl = true })
  hi("DiagnosticUnderlineInfo", { sp = text_blue, undercurl = true })
  hi("DiagnosticUnderlineHint", { sp = c.cyan, undercurl = true })

  -- Diff / Git
  hi("DiffAdd", { bg = c.diff_add })
  hi("DiffDelete", { bg = c.diff_delete })
  hi("DiffChange", { bg = c.diff_change })
  hi("DiffText", { bg = c.diff_text })
  hi("GitSignsAdd", { fg = text_green })
  hi("GitSignsChange", { fg = text_blue })
  hi("GitSignsDelete", { fg = text_red })

  -- Treesitter / semantic
  hi("@comment", { link = "Comment" })
  hi("@keyword", { link = "Keyword" })
  hi("@keyword.function", { fg = text_red, bold = true })
  hi("@keyword.return", { fg = text_red, italic = true })
  hi("@variable", { fg = text_main })
  hi("@variable.builtin", { fg = text_warm, italic = true })
  hi("@constant", { link = "Constant" })
  hi("@constant.builtin", { fg = text_red, bold = true })
  hi("@string", { link = "String" })
  hi("@string.escape", { fg = text_emph })
  hi("@number", { link = "Number" })
  hi("@boolean", { link = "Boolean" })
  hi("@function", { link = "Function" })
  hi("@function.builtin", { fg = text_blue, italic = true })
  hi("@method", { fg = text_blue })
  hi("@constructor", { fg = text_emph, bold = true })
  hi("@parameter", { fg = text_dim })
  hi("@field", { fg = text_blue })
  hi("@property", { fg = text_blue })
  hi("@type", { link = "Type" })
  hi("@type.builtin", { fg = text_blue, italic = true })
  hi("@punctuation.delimiter", { fg = text_dim })
  hi("@punctuation.bracket", { fg = text_dim })
  hi("@tag", { fg = text_emph, bold = true })
  hi("@tag.attribute", { fg = text_blue })

  hi("@lsp.type.function", { link = "Function" })
  hi("@lsp.type.method", { fg = text_blue })
  hi("@lsp.type.parameter", { fg = text_dim })
  hi("@lsp.type.variable", { fg = text_main })
  hi("@lsp.type.property", { fg = text_blue })
  hi("@lsp.type.keyword", { link = "Keyword" })
  hi("@lsp.type.type", { link = "Type" })

  -- Telescope
  hi("TelescopeNormal", { fg = text_main, bg = float_bg })
  hi("TelescopeBorder", { fg = telescope_border, bg = float_bg })
  hi("TelescopePromptBorder", { fg = text_warm, bg = float_bg })
  hi("TelescopePromptTitle", { fg = c.bg, bg = text_emph, bold = true })
  hi("TelescopeResultsTitle", { fg = c.white, bg = text_blue, bold = true })
  hi("TelescopePreviewTitle", { fg = c.white, bg = text_red, bold = true })
  hi("TelescopeSelection", { bg = c.bg_soft, bold = true })
  hi("TelescopeMatching", { fg = text_emph, bold = true })

  -- Completion
  hi("CmpItemAbbr", { fg = text_main })
  hi("CmpItemAbbrMatch", { fg = text_emph, bold = true })
  hi("CmpItemAbbrMatchFuzzy", { fg = text_warm, bold = true })
  hi("CmpItemMenu", { fg = text_muted })
  hi("CmpItemKindFunction", { fg = text_blue })
  hi("CmpItemKindMethod", { fg = text_blue })
  hi("CmpItemKindVariable", { fg = text_main })
  hi("CmpItemKindClass", { fg = text_emph })
  hi("CmpItemKindKeyword", { fg = text_red })
  hi("CmpItemKindSnippet", { fg = text_warm })

  -- WhichKey
  hi("WhichKey", { fg = text_emph, bold = true })
  hi("WhichKeyGroup", { fg = text_blue })
  hi("WhichKeyDesc", { fg = text_red })
  hi("WhichKeySeparator", { fg = text_muted })
  hi("WhichKeyFloat", { bg = float_bg })

  -- Indent guides
  hi("IblIndent", { fg = c.bg_soft })
  hi("IblScope", { fg = text_blue })

  -- NvimTree
  hi("NvimTreeNormal", { fg = text_main, bg = float_bg })
  hi("NvimTreeRootFolder", { fg = text_emph, bold = true })
  hi("NvimTreeFolderName", { fg = text_blue })
  hi("NvimTreeOpenedFolderName", { fg = text_emph, bold = true })
  hi("NvimTreeEmptyFolderName", { fg = text_muted, italic = true })
  hi("NvimTreeIndentMarker", { fg = c.bg_soft })

  -- Terminal colors
  vim.g.terminal_color_0 = c.bg
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.yellow
  vim.g.terminal_color_4 = c.blue
  vim.g.terminal_color_5 = c.burgundy
  vim.g.terminal_color_6 = c.cyan
  vim.g.terminal_color_7 = c.white
  vim.g.terminal_color_8 = c.bg_soft
  vim.g.terminal_color_9 = c.coral
  vim.g.terminal_color_10 = c.lime
  vim.g.terminal_color_11 = c.gold
  vim.g.terminal_color_12 = c.aqua
  vim.g.terminal_color_13 = c.burgundy
  vim.g.terminal_color_14 = c.aqua
  vim.g.terminal_color_15 = c.white
end

return M
