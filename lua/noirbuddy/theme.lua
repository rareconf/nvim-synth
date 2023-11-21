local Group = require('colorbuddy').Group
local colors = require('colorbuddy').colors
local styles = require('colorbuddy').styles

local parseStyleOpts = function(opts)
  return {
    italic = vim.tbl_get(opts, 'styles', 'italic') and styles.italic or styles.NONE,
    bold = vim.tbl_get(opts, 'styles', 'bold') and styles.bold or styles.NONE,
    underline = vim.tbl_get(opts, 'styles', 'underline') and styles.underline or styles.NONE,
    undercurl = vim.tbl_get(opts, 'styles', 'undercurl') and styles.undercurl or styles.NONE,
  }
end

-- We need this function because we can't do styles.NONE + styles.NONE (we need to ensure it's only added once)
local sumStyles = function(values)
  local sum = styles.NONE;

  for _, value in ipairs(values) do
    if value ~= styles.NONE then
      sum = sum + value
    end
  end

  return sum
end

local M = {}

function M.setup(opts)
  opts = opts or {}

  local s = parseStyleOpts(opts)

  -- Generic Highlighting
  Group.new('Normal', colors.noir_4, colors.nb_background)
  Group.new('Search', colors.noir_9, colors.noir_5)
  Group.new('IncSearch', colors.noir_9, colors.noir_5)
  Group.new('Visual', nil, colors.noir_8)
  Group.new('SignColumn', nil, colors.nb_background)
  Group.new('LineNr', colors.noir_8, colors.nb_background)
  Group.new("EndOfBuffer", colors.nb_background, nil)

  Group.new('Comment', colors.noir_7)
  Group.new('Constant', colors.primary)
  Group.new('Character', colors.noir_5)
  Group.new('Identifier', colors.noir_0)
  Group.new('Statement', colors.noir_1)
  Group.new('PreProc', colors.primary)
  Group.new('Type', colors.secondary)
  Group.new('Special', colors.noir_5)
  Group.new('Error', colors.diagnostic_error)
  Group.new('Todo', colors.primary, colors.noir_8)
  Group.new('Function', colors.noir_0)

  Group.new('ColorColumn', nil, colors.noir_8)
  Group.new('Conceal', colors.noir_7)
  Group.new('Cursor', nil)
  Group.new('CursorColumn', nil, colors.noir_9)
  Group.new('CursorLine', nil, colors.noir_9)
  Group.new('CursorLineNr', colors.primary, colors.noir_9)
  Group.new('Directory', colors.primary)
  Group.new('DiffAdd', colors.noir_9, colors.diff_add, styles.bold)
  Group.new('DiffChange', nil, colors.noir_9)
  Group.new('DiffDelete', colors.noir_10, colors.diff_delete)
  Group.new('DiffText', colors.noir_10, colors.diff_change, styles.bold)
  Group.new('ErrorMsg', colors.noir_9, colors.diagnostic_error)
  Group.new('VertSplit', colors.noir_9, colors.nb_background)

  Group.new('Folded', colors.noir_6, colors.noir_9)
  Group.new('FoldColumn', colors.noir_6, colors.noir_9)
  Group.new('MatchParen', colors.noir_5, colors.nb_background)
  Group.new('MoreMsg', nil, colors.noir_6)
  Group.new('NonText', colors.noir_8, nil)
  Group.new('Pmenu', colors.noir_2, colors.noir_9)
  Group.new('PmenuSel', colors.noir_9, colors.primary)
  Group.new('PmenuSbar', colors.primary, colors.noir_9)
  Group.new('PmenuThumb', colors.primary, colors.noir_8)
  Group.new('Question', colors.noir_1, colors.noir_9)
  Group.new('SpecialKey', colors.noir_6, nil)
  Group.new('SpellBad', colors.primary)
  Group.new('SpellCap', colors.noir_0)
  Group.new('SpellLocal', colors.noir_5)
  Group.new('SpellRare', colors.primary)
  Group.new('StatusLine', colors.noir_0, colors.noir_9)
  Group.new('TabLine', colors.noir_3, colors.nb_background)
  Group.new('TabLineFill', nil, colors.nb_background)
  Group.new('TabLineSel', colors.noir_2, colors.noir_9)
  Group.new('Title', colors.noir_3)
  Group.new('VisualNOS', colors.primary, colors.noir_8)
  Group.new('WarningMsg', colors.diagnostic_warning)
  Group.new('WildMenu', colors.noir_0, colors.noir_9)
  Group.new('Underlined', colors.noir_0, colors.nb_background)
  Group.new('WinBar', colors.diff_delete, colors.noir_10)
  Group.new('WinBarNC', colors.noir_7, colors.noir_10)

  Group.new('FloatBorder', colors.noir_0)
  Group.new('FloatTitle', colors.noir_0)
  Group.new('NormalFloat', colors.noir_4, colors.noir_10)

  -- Treesitter Syntax Highlighting
  -- See :help treesitter-highlight-groups
  Group.new('@boolean', colors.primary)
  Group.new('@character', colors.secondary)
  Group.new('@character.special', colors.noir_2)
  Group.new('@comment', colors.noir_7)
  Group.new('@conditional', colors.noir_2)
  Group.new('@constant', colors.noir_2)
  Group.new('@constant.builtin', colors.noir_2)
  Group.new('@constant.macro', colors.primary)
  Group.new('@constructor', colors.noir_1)
  Group.new('@debug', colors.noir_2)
  Group.new('@define', colors.noir_2)
  Group.new('@exception', colors.noir_2)
  Group.new('@field', colors.noir_2)
  Group.new('@float', colors.noir_2)
  Group.new('@function', colors.noir_0)
  Group.new('@function.builtin', colors.noir_2)
  Group.new('@function.call', colors.noir_2)
  Group.new('@function.macro', colors.primary)
  Group.new('@include', colors.noir_6)
  Group.new('@keyword', colors.noir_5)
  Group.new('@keyword.function', colors.noir_5)
  Group.new('@keyword.operator', colors.noir_6)
  Group.new('@keyword.return', colors.noir_0)
  Group.new('@label', colors.noir_2)
  Group.new('@macro', colors.primary)
  Group.new('@method', colors.noir_1)
  Group.new('@method.call', colors.noir_2)
  Group.new('@namespace', colors.noir_2)
  Group.new('@none', colors.noir_3)
  Group.new('@number', colors.primary)
  Group.new('@operator', colors.noir_6)
  Group.new('@parameter', colors.noir_2)
  Group.new('@preproc', colors.noir_2)
  Group.new('@property', colors.noir_2)
  Group.new('@punctuation', colors.noir_2)
  Group.new('@punctuation.bracket', colors.noir_0)
  Group.new('@punctuation.delimiter', colors.noir_6)
  Group.new('@punctuation.special', colors.primary)
  Group.new('@repeat', colors.noir_2)
  Group.new('@storageclass', colors.noir_2)
  Group.new('@string', colors.primary)
  Group.new('@string.escape', colors.noir_2)
  Group.new('@string.special', colors.noir_2)
  Group.new('@structure', colors.noir_2)
  Group.new('@tag', colors.noir_6)
  Group.new('@tag.attribute', colors.noir_4)
  Group.new('@tag.delimiter', colors.noir_3)
  Group.new('@text.literal', colors.secondary)
  Group.new('@text.reference', colors.secondary)
  Group.new('@text.title', colors.noir_2)
  Group.new('@text.todo', colors.noir_2)
  Group.new('@text.underline', colors.noir_2)
  Group.new('@text.uri', colors.noir_2)
  Group.new('@type', colors.noir_2)
  Group.new("@identifier", colors.noir_0)
  Group.new('@type.builtin', colors.noir_0)
  Group.new('@type.definition', colors.noir_2)
  Group.new('@variable', colors.secondary)
  Group.new('@variable.builtin', colors.noir_2)
  Group.new('@lsp.type.function', colors.noir_0)
  Group.new('@lsp.type.macro', colors.primary)
  Group.new('@lsp.type.method', colors.noir_2)


  -- Semantic Highlighting
  Group.new('DiagnosticError', colors.diagnostic_error, nil, sumStyles({ s.bold, s.italic, s.undercurl }))
  Group.new('DiagnosticWarn', colors.diagnostic_warning, nil, sumStyles({ s.bold, s.italic, s.undercurl }))
  Group.new('DiagnosticInfo', colors.diagnostic_info, nil, sumStyles({ s.bold, s.italic, s.undercurl }))
  Group.new('DiagnosticHint', colors.diagnostic_hint, nil, sumStyles({ s.bold, s.italic, s.undercurl }))
  Group.new('DiagnosticSignError', colors.diagnostic_error)
  Group.new('DiagnosticSignWarn', colors.diagnostic_warning)
  Group.new('DiagnosticSignInfo', colors.diagnostic_info)
  Group.new('DiagnosticSignHint', colors.diagnostic_hint)
  Group.new('DiffAdd', colors.noir_9, colors.diff_add)
  Group.new('DiffChange', nil, colors.noir_10)
  Group.new('DiffDelete', colors.noir_10, colors.diff_delete)
end

return M
