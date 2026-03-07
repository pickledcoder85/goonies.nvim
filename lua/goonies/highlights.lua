local M = {}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(c, opts)
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "goonies-" .. (opts.variant or "night")

  local is_day = opts.variant == "day"

  local text_main = is_day and c.ink or c.fg
  local text_emph = is_day and c.white or c.white
  local text_blue = is_day and c.blue or c.blue
  local text_green = is_day and c.green or c.green
  local text_red = is_day and c.burgundy or c.red
  local text_plum = is_day and c.plum or c.plum
  local text_gold = is_day and c.gold or c.gold
  local text_ink = is_day and c.ink or c.fg

  local float_border = is_day and c.rust or c.gold
  local cursorline_bg = is_day and c.bg_alt or c.bg_soft
  local visual_bg = is_day and "#e5bf67" or c.diff_text
  local pmenu_sel = is_day and c.blue or c.cyan
  local telescope_border = is_day and c.rust or c.gold

  -- Base editor
  hi("Normal", { fg = text_main, bg = c.bg })
  hi("NormalFloat", { fg = text_main, bg = c.bg_alt })
  hi("FloatBorder", { fg = float_border, bg = c.bg_alt })
  hi("FloatTitle", { fg = text_gold, bg = c.bg_alt, bold = true })
  hi("ColorColumn", { bg = c.bg_soft })
  hi("Conceal", { fg = c.fg_muted })
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
  hi("Folded", { fg = c.fg_dim, bg = c.bg_soft, italic = true })
  hi("FoldColumn", { fg = c.fg_muted, bg = c.bg })
  hi("SignColumn", { fg = c.fg_muted, bg = c.bg })
  hi("IncSearch", { fg = c.bg, bg = c.orange, bold = true })
  hi("Search", { fg = c.bg, bg = c.yellow })
  hi("CurSearch", { fg = c.bg, bg = text_gold, bold = true })
  hi("LineNr", { fg = c.fg_muted })
  hi("CursorLineNr", { fg = text_emph, bold = true })
  hi("MatchParen", { fg = text_gold, bg = c.bg_soft, bold = true })
  hi("ModeMsg", { fg = text_blue, bold = true })
  hi("MoreMsg", { fg = text_blue })
  hi("NonText", { fg = c.bg_soft })
  hi("Pmenu", { fg = text_main, bg = c.bg_alt })
  hi("PmenuSel", { fg = c.white, bg = pmenu_sel, bold = true })
  hi("PmenuSbar", { bg = c.bg_soft })
  hi("PmenuThumb", { bg = c.fg_muted })
  hi("Question", { fg = text_blue })
  hi("QuickFixLine", { bg = c.bg_soft, bold = true })
  hi("SpecialKey", { fg = text_plum })
  hi("SpellBad", { sp = text_red, undercurl = true })
  hi("SpellCap", { sp = text_blue, undercurl = true })
  hi("SpellLocal", { sp = c.cyan, undercurl = true })
  hi("SpellRare", { sp = text_plum, undercurl = true })
  hi("StatusLine", { fg = text_main, bg = c.bg_soft })
  hi("StatusLineNC", { fg = c.fg_muted, bg = c.bg_alt })
  hi("TabLine", { fg = c.fg_dim, bg = c.bg_alt })
  hi("TabLineFill", { bg = c.bg })
  hi("TabLineSel", { fg = c.bg, bg = text_gold, bold = true })
  hi("Title", { fg = text_emph, bold = true })
  hi("Visual", { bg = visual_bg })
  hi("WarningMsg", { fg = c.orange, bold = true })
  hi("Whitespace", { fg = c.bg_soft })
  hi("WildMenu", { fg = c.bg, bg = text_gold, bold = true })

  -- Syntax
  hi("Comment", { fg = c.fg_muted, italic = opts.italic_comments })
  hi("Constant", { fg = text_red })
  hi("String", { fg = text_blue })
  hi("Character", { fg = text_blue })
  hi("Number", { fg = text_gold })
  hi("Boolean", { fg = text_red, bold = true })
  hi("Float", { fg = text_gold })
  hi("Identifier", { fg = text_ink })
  hi("Function", { fg = text_blue, bold = true })
  hi("Statement", { fg = text_red, bold = true })
  hi("Conditional", { fg = text_red, bold = true })
  hi("Repeat", { fg = text_red, bold = true })
  hi("Label", { fg = text_gold })
  hi("Operator", { fg = c.rust })
  hi("Keyword", { fg = text_red, italic = true })
  hi("Exception", { fg = text_red, bold = true })
  hi("PreProc", { fg = text_gold })
  hi("Include", { fg = text_blue })
  hi("Define", { fg = text_red })
  hi("Macro", { fg = text_red })
  hi("PreCondit", { fg = text_gold })
  hi("Type", { fg = text_blue, bold = true })
  hi("StorageClass", { fg = text_blue })
  hi("Structure", { fg = text_blue })
  hi("Typedef", { fg = text_blue, italic = true })
  hi("Special", { fg = c.rust })
  hi("SpecialChar", { fg = c.rust })
  hi("Tag", { fg = text_emph, bold = true })
  hi("Delimiter", { fg = c.fg_dim })
  hi("SpecialComment", { fg = c.fg_muted, italic = true })
  hi("Debug", { fg = text_red })
  hi("Underlined", { underline = true })
  hi("Bold", { bold = true })
  hi("Italic", { italic = true })
  hi("Ignore", { fg = c.fg_muted })
  hi("Error", { fg = text_red, bold = true })
  hi("Todo", { fg = c.bg, bg = text_emph, bold = true })

  -- Diagnostics
  hi("DiagnosticError", { fg = text_red })
  hi("DiagnosticWarn", { fg = c.orange })
  hi("DiagnosticInfo", { fg = text_blue })
  hi("DiagnosticHint", { fg = c.cyan })
  hi("DiagnosticOk", { fg = text_green })
  hi("DiagnosticVirtualTextError", { fg = text_red, bg = c.bg_alt })
  hi("DiagnosticVirtualTextWarn", { fg = c.orange, bg = c.bg_alt })
  hi("DiagnosticVirtualTextInfo", { fg = text_blue, bg = c.bg_alt })
  hi("DiagnosticVirtualTextHint", { fg = c.cyan, bg = c.bg_alt })
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

  -- Treesitter
  hi("@comment", { link = "Comment" })
  hi("@keyword", { link = "Keyword" })
  hi("@keyword.function", { fg = text_red, bold = true })
  hi("@keyword.return", { fg = text_red, italic = true })
  hi("@variable", { fg = text_ink })
  hi("@variable.builtin", { fg = c.rust, italic = true })
  hi("@constant", { link = "Constant" })
  hi("@constant.builtin", { fg = text_red, bold = true })
  hi("@string", { link = "String" })
  hi("@string.escape", { fg = text_gold })
  hi("@number", { link = "Number" })
  hi("@boolean", { link = "Boolean" })
  hi("@function", { link = "Function" })
  hi("@function.builtin", { fg = text_blue, italic = true })
  hi("@method", { fg = text_blue })
  hi("@constructor", { fg = text_emph, bold = true })
  hi("@parameter", { fg = c.fg_dim })
  hi("@field", { fg = text_blue })
  hi("@property", { fg = text_blue })
  hi("@type", { link = "Type" })
  hi("@type.builtin", { fg = text_blue, italic = true })
  hi("@punctuation.delimiter", { fg = c.fg_dim })
  hi("@punctuation.bracket", { fg = c.fg_dim })
  hi("@tag", { fg = text_emph, bold = true })
  hi("@tag.attribute", { fg = text_blue })

  -- LSP semantic tokens
  hi("@lsp.type.function", { link = "Function" })
  hi("@lsp.type.method", { fg = text_blue })
  hi("@lsp.type.parameter", { fg = c.fg_dim })
  hi("@lsp.type.variable", { fg = text_ink })
  hi("@lsp.type.property", { fg = text_blue })
  hi("@lsp.type.keyword", { link = "Keyword" })
  hi("@lsp.type.type", { link = "Type" })

  -- Telescope
  hi("TelescopeNormal", { fg = text_main, bg = c.bg_alt })
  hi("TelescopeBorder", { fg = telescope_border, bg = c.bg_alt })
  hi("TelescopePromptBorder", { fg = text_gold, bg = c.bg_alt })
  hi("TelescopePromptTitle", { fg = c.bg, bg = text_gold, bold = true })
  hi("TelescopeResultsTitle", { fg = c.white, bg = text_blue, bold = true })
  hi("TelescopePreviewTitle", { fg = c.white, bg = text_red, bold = true })
  hi("TelescopeSelection", { bg = c.bg_soft, bold = true })
  hi("TelescopeMatching", { fg = text_emph, bold = true })

  -- Completion
  hi("CmpItemAbbr", { fg = text_main })
  hi("CmpItemAbbrMatch", { fg = text_emph, bold = true })
  hi("CmpItemAbbrMatchFuzzy", { fg = text_gold, bold = true })
  hi("CmpItemMenu", { fg = c.fg_muted })
  hi("CmpItemKindFunction", { fg = text_blue })
  hi("CmpItemKindMethod", { fg = text_blue })
  hi("CmpItemKindVariable", { fg = text_ink })
  hi("CmpItemKindClass", { fg = text_emph })
  hi("CmpItemKindKeyword", { fg = text_red })
  hi("CmpItemKindSnippet", { fg = c.rust })

  -- WhichKey
  hi("WhichKey", { fg = text_emph, bold = true })
  hi("WhichKeyGroup", { fg = text_blue })
  hi("WhichKeyDesc", { fg = text_red })
  hi("WhichKeySeparator", { fg = c.fg_muted })
  hi("WhichKeyFloat", { bg = c.bg_alt })

  -- Indent guides
  hi("IblIndent", { fg = c.bg_soft })
  hi("IblScope", { fg = text_blue })

  -- NvimTree
  hi("NvimTreeNormal", { fg = text_main, bg = c.bg_alt })
  hi("NvimTreeRootFolder", { fg = text_emph, bold = true })
  hi("NvimTreeFolderName", { fg = text_blue })
  hi("NvimTreeOpenedFolderName", { fg = text_emph, bold = true })
  hi("NvimTreeEmptyFolderName", { fg = c.fg_muted, italic = true })
  hi("NvimTreeIndentMarker", { fg = c.bg_soft })

  -- Terminal colors
  vim.g.terminal_color_0 = c.bg
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.yellow
  vim.g.terminal_color_4 = c.blue
  vim.g.terminal_color_5 = c.plum
  vim.g.terminal_color_6 = c.cyan
  vim.g.terminal_color_7 = c.white
  vim.g.terminal_color_8 = c.bg_soft
  vim.g.terminal_color_9 = c.coral
  vim.g.terminal_color_10 = c.lime
  vim.g.terminal_color_11 = c.gold
  vim.g.terminal_color_12 = c.aqua
  vim.g.terminal_color_13 = c.violet
  vim.g.terminal_color_14 = c.aqua
  vim.g.terminal_color_15 = c.white
end

return M
