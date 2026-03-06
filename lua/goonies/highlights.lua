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

  -- Base editor
  hi("Normal", { fg = c.fg, bg = c.bg })
  hi("NormalFloat", { fg = c.fg, bg = c.bg_alt })
  hi("FloatBorder", { fg = c.blue, bg = c.bg_alt })
  hi("FloatTitle", { fg = c.gold, bg = c.bg_alt, bold = true })
  hi("ColorColumn", { bg = c.bg_soft })
  hi("Conceal", { fg = c.fg_muted })
  hi("Cursor", { fg = c.bg, bg = c.gold })
  hi("lCursor", { fg = c.bg, bg = c.gold })
  hi("CursorIM", { fg = c.bg, bg = c.gold })
  hi("CursorLine", { bg = c.bg_alt })
  hi("CursorColumn", { bg = c.bg_alt })
  hi("Directory", { fg = c.cyan, bold = true })
  hi("EndOfBuffer", { fg = c.bg })
  hi("ErrorMsg", { fg = c.red, bold = true })
  hi("VertSplit", { fg = c.bg_soft, bg = c.bg })
  hi("WinSeparator", { fg = c.bg_soft, bg = c.bg })
  hi("Folded", { fg = c.fg_dim, bg = c.bg_soft, italic = true })
  hi("FoldColumn", { fg = c.fg_muted, bg = c.bg })
  hi("SignColumn", { fg = c.fg_muted, bg = c.bg })
  hi("IncSearch", { fg = c.bg, bg = c.orange, bold = true })
  hi("Search", { fg = c.bg, bg = c.yellow })
  hi("CurSearch", { fg = c.bg, bg = c.gold, bold = true })
  hi("LineNr", { fg = c.fg_muted })
  hi("CursorLineNr", { fg = c.gold, bold = true })
  hi("MatchParen", { fg = c.gold, bg = c.bg_soft, bold = true })
  hi("ModeMsg", { fg = c.aqua, bold = true })
  hi("MoreMsg", { fg = c.aqua })
  hi("NonText", { fg = c.bg_soft })
  hi("Pmenu", { fg = c.fg, bg = c.bg_alt })
  hi("PmenuSel", { fg = c.bg, bg = c.cyan, bold = true })
  hi("PmenuSbar", { bg = c.bg_soft })
  hi("PmenuThumb", { bg = c.fg_muted })
  hi("Question", { fg = c.aqua })
  hi("QuickFixLine", { bg = c.bg_soft, bold = true })
  hi("SpecialKey", { fg = c.plum })
  hi("SpellBad", { sp = c.red, undercurl = true })
  hi("SpellCap", { sp = c.blue, undercurl = true })
  hi("SpellLocal", { sp = c.cyan, undercurl = true })
  hi("SpellRare", { sp = c.violet, undercurl = true })
  hi("StatusLine", { fg = c.fg, bg = c.bg_soft })
  hi("StatusLineNC", { fg = c.fg_muted, bg = c.bg_alt })
  hi("TabLine", { fg = c.fg_dim, bg = c.bg_alt })
  hi("TabLineFill", { bg = c.bg })
  hi("TabLineSel", { fg = c.bg, bg = c.gold, bold = true })
  hi("Title", { fg = c.gold, bold = true })
  hi("Visual", { bg = c.diff_text })
  hi("WarningMsg", { fg = c.orange, bold = true })
  hi("Whitespace", { fg = c.bg_soft })
  hi("WildMenu", { fg = c.bg, bg = c.gold, bold = true })

  -- Syntax
  hi("Comment", { fg = c.fg_muted, italic = opts.italic_comments })
  hi("Constant", { fg = c.orange })
  hi("String", { fg = c.green })
  hi("Character", { fg = c.green })
  hi("Number", { fg = c.sand })
  hi("Boolean", { fg = c.orange, bold = true })
  hi("Float", { fg = c.sand })
  hi("Identifier", { fg = c.fg })
  hi("Function", { fg = c.cyan, bold = true })
  hi("Statement", { fg = c.plum, bold = true })
  hi("Conditional", { fg = c.violet, bold = true })
  hi("Repeat", { fg = c.violet, bold = true })
  hi("Label", { fg = c.gold })
  hi("Operator", { fg = c.coral })
  hi("Keyword", { fg = c.plum, italic = true })
  hi("Exception", { fg = c.red, bold = true })
  hi("PreProc", { fg = c.gold })
  hi("Include", { fg = c.blue })
  hi("Define", { fg = c.orange })
  hi("Macro", { fg = c.orange })
  hi("PreCondit", { fg = c.yellow })
  hi("Type", { fg = c.blue, bold = true })
  hi("StorageClass", { fg = c.blue })
  hi("Structure", { fg = c.blue })
  hi("Typedef", { fg = c.blue, italic = true })
  hi("Special", { fg = c.coral })
  hi("SpecialChar", { fg = c.coral })
  hi("Tag", { fg = c.gold })
  hi("Delimiter", { fg = c.fg_dim })
  hi("SpecialComment", { fg = c.fg_muted, italic = true })
  hi("Debug", { fg = c.red })
  hi("Underlined", { underline = true })
  hi("Bold", { bold = true })
  hi("Italic", { italic = true })
  hi("Ignore", { fg = c.fg_muted })
  hi("Error", { fg = c.red, bold = true })
  hi("Todo", { fg = c.bg, bg = c.gold, bold = true })

  -- Diagnostics
  hi("DiagnosticError", { fg = c.red })
  hi("DiagnosticWarn", { fg = c.orange })
  hi("DiagnosticInfo", { fg = c.blue })
  hi("DiagnosticHint", { fg = c.cyan })
  hi("DiagnosticOk", { fg = c.green })
  hi("DiagnosticVirtualTextError", { fg = c.red, bg = c.bg_alt })
  hi("DiagnosticVirtualTextWarn", { fg = c.orange, bg = c.bg_alt })
  hi("DiagnosticVirtualTextInfo", { fg = c.blue, bg = c.bg_alt })
  hi("DiagnosticVirtualTextHint", { fg = c.cyan, bg = c.bg_alt })
  hi("DiagnosticUnderlineError", { sp = c.red, undercurl = true })
  hi("DiagnosticUnderlineWarn", { sp = c.orange, undercurl = true })
  hi("DiagnosticUnderlineInfo", { sp = c.blue, undercurl = true })
  hi("DiagnosticUnderlineHint", { sp = c.cyan, undercurl = true })

  -- Diff / Git
  hi("DiffAdd", { bg = c.diff_add })
  hi("DiffDelete", { bg = c.diff_delete })
  hi("DiffChange", { bg = c.diff_change })
  hi("DiffText", { bg = c.diff_text })
  hi("GitSignsAdd", { fg = c.green })
  hi("GitSignsChange", { fg = c.blue })
  hi("GitSignsDelete", { fg = c.red })

  -- Treesitter / semantic groups
  hi("@comment", { link = "Comment" })
  hi("@keyword", { link = "Keyword" })
  hi("@keyword.function", { fg = c.plum, bold = true })
  hi("@keyword.return", { fg = c.violet, italic = true })
  hi("@variable", { fg = c.fg })
  hi("@variable.builtin", { fg = c.coral, italic = true })
  hi("@constant", { link = "Constant" })
  hi("@constant.builtin", { fg = c.orange, bold = true })
  hi("@string", { link = "String" })
  hi("@string.escape", { fg = c.gold })
  hi("@number", { link = "Number" })
  hi("@boolean", { link = "Boolean" })
  hi("@function", { link = "Function" })
  hi("@function.builtin", { fg = c.cyan, italic = true })
  hi("@method", { fg = c.aqua })
  hi("@constructor", { fg = c.gold, bold = true })
  hi("@parameter", { fg = c.fg_dim })
  hi("@field", { fg = c.aqua })
  hi("@property", { fg = c.aqua })
  hi("@type", { link = "Type" })
  hi("@type.builtin", { fg = c.blue, italic = true })
  hi("@punctuation.delimiter", { fg = c.fg_dim })
  hi("@punctuation.bracket", { fg = c.fg_dim })
  hi("@tag", { fg = c.gold })
  hi("@tag.attribute", { fg = c.cyan })

  -- LSP semantic tokens
  hi("@lsp.type.function", { link = "Function" })
  hi("@lsp.type.method", { fg = c.aqua })
  hi("@lsp.type.parameter", { fg = c.fg_dim })
  hi("@lsp.type.variable", { fg = c.fg })
  hi("@lsp.type.property", { fg = c.aqua })
  hi("@lsp.type.keyword", { link = "Keyword" })
  hi("@lsp.type.type", { link = "Type" })

  -- Common plugins
  hi("TelescopeNormal", { fg = c.fg, bg = c.bg_alt })
  hi("TelescopeBorder", { fg = c.blue, bg = c.bg_alt })
  hi("TelescopePromptBorder", { fg = c.gold, bg = c.bg_alt })
  hi("TelescopePromptTitle", { fg = c.bg, bg = c.gold, bold = true })
  hi("TelescopeResultsTitle", { fg = c.bg, bg = c.blue, bold = true })
  hi("TelescopePreviewTitle", { fg = c.bg, bg = c.cyan, bold = true })
  hi("TelescopeSelection", { bg = c.bg_soft, bold = true })
  hi("TelescopeMatching", { fg = c.gold, bold = true })

  hi("CmpItemAbbr", { fg = c.fg })
  hi("CmpItemAbbrMatch", { fg = c.gold, bold = true })
  hi("CmpItemAbbrMatchFuzzy", { fg = c.yellow, bold = true })
  hi("CmpItemMenu", { fg = c.fg_muted })
  hi("CmpItemKindFunction", { fg = c.cyan })
  hi("CmpItemKindMethod", { fg = c.aqua })
  hi("CmpItemKindVariable", { fg = c.fg_dim })
  hi("CmpItemKindClass", { fg = c.blue })
  hi("CmpItemKindKeyword", { fg = c.plum })
  hi("CmpItemKindSnippet", { fg = c.orange })

  hi("WhichKey", { fg = c.gold, bold = true })
  hi("WhichKeyGroup", { fg = c.blue })
  hi("WhichKeyDesc", { fg = c.cyan })
  hi("WhichKeySeparator", { fg = c.fg_muted })
  hi("WhichKeyFloat", { bg = c.bg_alt })

  hi("IblIndent", { fg = c.bg_soft })
  hi("IblScope", { fg = c.blue })

  hi("NvimTreeNormal", { fg = c.fg, bg = c.bg_alt })
  hi("NvimTreeRootFolder", { fg = c.gold, bold = true })
  hi("NvimTreeFolderName", { fg = c.cyan })
  hi("NvimTreeOpenedFolderName", { fg = c.aqua, bold = true })
  hi("NvimTreeEmptyFolderName", { fg = c.fg_muted, italic = true })
  hi("NvimTreeIndentMarker", { fg = c.bg_soft })

  -- Terminal colors
  vim.g.terminal_color_0  = c.bg
  vim.g.terminal_color_1  = c.red
  vim.g.terminal_color_2  = c.green
  vim.g.terminal_color_3  = c.yellow
  vim.g.terminal_color_4  = c.blue
  vim.g.terminal_color_5  = c.plum
  vim.g.terminal_color_6  = c.cyan
  vim.g.terminal_color_7  = c.fg
  vim.g.terminal_color_8  = c.bg_soft
  vim.g.terminal_color_9  = c.coral
  vim.g.terminal_color_10 = c.lime
  vim.g.terminal_color_11 = c.gold
  vim.g.terminal_color_12 = c.aqua
  vim.g.terminal_color_13 = c.violet
  vim.g.terminal_color_14 = c.aqua
  vim.g.terminal_color_15 = c.fg
end

return M
