local M = {}

-- Highlight Function And Color definitons {{{

local function highlight(group, styles)
  local gui = styles.gui and 'gui='..styles.gui or 'gui=NONE'
  local sp = styles.sp and 'guisp='..styles.sp or 'guisp=NONE'
  local fg = styles.fg and 'guifg='..styles.fg or 'guifg=NONE'
  local bg = styles.bg and 'guibg='..styles.bg or 'guibg=NONE'
  vim.api.nvim_command('highlight! '..group..' '..gui..' '..sp..' '..fg..' '..bg)
end

local bg             = '#292a37'
local bg_dark        = '#292a37'
local bg_darker      = '#252632'
local bg_light       = '#2e303e'
local bg_lighter     = '#303241'
local grey           = '#9699b7'
local grey_dark      = '#393a4d'
local red            = '#ec6a88'
local heavy_red      = '#e95678'
local green          = '#3fdaa4'
local blue           = '#3fc6de'
local blue_light     = '#26bbd9'
local yellow         = '#efb993'
local orange         = '#efb993'
local magenta        = '#b072d1'
local pink           = '#b771dc'
local cyan           = '#6be6e6'
local cyan_dark      = '#59e3e3'
local fg             = '#d9e0ee'
local fg_light       = '#d9e0ee'
local fg_dark        = '#d9e0ee'
local hollow         = '#393a4d'
local hollow_lighter = '#393a4d'
local white          = '#d9e0ee'
local comment        = '#9699b7'

-- }}}

-- Editor Highlight Groups {{{

local editor_syntax = {
  CursorLine   = { bg = bg_lighter },
  Cursor       = { fg = fg, bg = bg },
  Directory    = { fg = blue, gui = 'bold' },
  DiffAdd      = { fg = green },
  DiffChange   = { fg = yellow },
  DiffDelete   = { fg = red },
  DiffText     = { fg = blue },
  EndOfBuffer  = { bg = bg, fg = bg },
  ErrorMsg     = { fg = red, gui = 'bold' },
  VertSplit    = { bg = bg_dark, fg = bg },
  Folded       = { fg = fg_dark, gui = 'italic' },
  SignColumn   = { fg = bg, bg = bg },
  IncSearch    = { bg = yellow, fg = bg },
  Substitute   = { bg = blue, fg = bg },
  LineNr       = { fg = comment },
  CursorLineNr = { fg = fg },
  MatchParen   = { fg = fg, gui = 'bold' },
  Normal       = { fg = fg, bg = bg },
  NormalFloat  = { bg = grey_dark, fg = white },
  Pmenu        = { bg = bg_darker, fg = fg_light },
  PmenuSel     = { bg = bg_light, fg = white, gui = 'bold' },
  PmenuSbar    = { bg = bg_lighter },
  PmenuThumb   = { bg = bg },
  Search       = { bg = orange, fg = hollow },
  SpecialKey   = { bg = bg_light },
  SpellBad     = { gui = 'underline', sp = red },
  SpellCap     = { gui = 'underline', sp = yellow },
  SpellLocal   = { gui = 'underline', sp = orange },
  SpellRare    = { gui = 'underline', sp = blue },
  TabLine      = { bg = bg, fg = fg },
  TabLineFill  = { bg = bg, fg = fg },
  TabLineSel   = { bg = bg, fg = fg, gui = 'bold'},
  Title        = { fg = blue },
  Visual       = { bg = hollow_lighter },
  VisualNOS    = { bg = hollow_lighter },
  WarningMsg   = { fg = yellow, gui = 'italic' },
  Whitespace   = { bg = bg },

  -- git highlighting
  gitcommitComment        = { fg = fg_dark, gui = 'italic' },
  gitcommitUntracked      = { fg = fg_dark, gui = 'italic' },
  gitcommitDiscarded      = { fg = fg_dark, gui = 'italic' },
  gitcommitSelected       = { fg = fg_dark, gui = 'italic' },
  gitcommitUnmerged       = { fg = green },
  gitcommitBranch         = { fg = magenta },
  gitcommitNoBranch       = { fg = magenta },
  gitcommitDiscardedType  = { fg = red },
  gitcommitSelectedType   = { fg = green },
  gitcommitUntrackedFile  = { fg = cyan },
  gitcommitDiscardedFile  = { fg = red },
  gitcommitDiscardedArrow = { fg = red },
  gitcommitSelectedFile   = { fg = green },
  gitcommitSelectedArrow  = { fg = green },
  gitcommitUnmergedFile   = { fg = yellow },
  gitcommitUnmergedArrow  = { fg = yellow },
  gitcommitSummary        = { fg = fg_light },
  gitcommitOverflow       = { fg = red },
  gitcommitOnBranch      = {},
  gitcommitHeader        = {},
  gitcommitFile          = {},

  -- User dependent groups, probably useless to change the default:
  Conceal      = { fg = comment },
  ModeMsg      = {},
  MsgArea      = {},
  MsgSeparator = {},
  MoreMsg      = {},
  NonText      = { fg = comment },
  Question     = { fg = magenta },
  QuickFixLine = { fg = bg_light, bg = orange },
  StatusLine   = { fg = fg, bg = bg },
  StatusLineNC = { fg = comment },
  WildMenu     = { fg = hollow }
}

-- }}}

-- Vim Default Code Syntax {{{

local code_syntax = {
  Comment        = { fg = comment, gui = 'italic' },
  Constant       = { fg = yellow },
  String         = { fg = green },
  Character      = { fg = green, gui = 'bold' },
  Number         = { fg = orange },
  Float          = { fg = cyan },
  Boolean        = { fg = orange },

  Identifier     = { fg = cyan },
  Function       = { fg = orange, gui = 'italic' },

  Statement      = { fg = magenta, gui = 'italic' },
  Conditional    = { fg = magenta, gui = 'italic' },
  Repeat         = { fg = magenta, gui = 'italic' },
  Label          = { fg = blue, gui = 'italic' },
  Exception      = { fg = magenta, gui = 'italic' },
  Operator       = { fg = magenta },
  Keyword        = { fg = blue },

  Include        = { fg = magenta },
  Define         = { fg = magenta },
  Macro          = { fg = magenta },
  PreProc        = { fg = yellow },
  PreCondit      = { fg = blue },

  Type           = { fg = blue },
  StorageClass   = { fg = blue },
  Structure      = { fg = yellow },
  Typedef        = { fg = yellow },

  Special        = { fg = blue },
  SpecialChar    = {},
  Tag            = { fg = orange },
  SpecialComment = { fg = comment, gui = 'bold' },
  Debug          = {},
  Delimiter      = {},

  Ignore         = {},
  Underlined     = { gui = 'underline' },
  Error          = { fg = heavy_red },
  Todo           = { fg = magenta, gui = 'bold' },
}

-- }}}

-- Plugin Highlight Groups {{{

local plugin_syntax = {
  NvimTreeNormal         = { bg = bg_darker },
  NvimTreeEndOfBuffer    = { bg = bg_darker, fg = bg_darker },

  CmpItemMenu            = { fg = comment },
  CmpItemAbbr            = { fg = comment },
  CmpItemAbbrMatch       = { fg = white },
  CmpItemAbbrMatchFuzzy  = { fg = white },
  CmpItemKind            = { fg = blue },

  IndentBlanklineChar    = { fg = bg_lighter },

  GitGutterAdd           = { fg = green },
  GitGutterChange        = { fg = yellow },
  GitGutterDelete        = { fg = red },
  GitGutterChangeDelete  = { fg = orange },

  diffAdded              = { fg = green },
  diffRemoved            = { fg = heavy_red },

  TSError                = { fg = red },
  TSPunctDelimiter       = { fg = fg },
  TSPunctBracket         = { fg = fg },
  TSPunctSpecial         = { fg = fg },
  TSConstant             = { fg = blue },
  TSConstBuiltin         = { fg = orange },
  TSConstMacro           = { fg = cyan },
  TSString               = { fg = green },
  TSStringRegex          = { fg = green },
  TSStringEscape         = { fg = cyan_dark },
  TSNumber               = { fg = orange },
  TSBoolean              = { fg = orange },
  TSFloat                = { fg = green },
  TSFunction             = { fg = blue_light },
  TSFuncBuiltin          = { fg = blue },
  TSFuncMacro            = { fg = orange },
  TSParameter            = { fg = cyan },
  TSParameterReference   = { fg = cyan },
  TSMethod               = { fg = blue },
  TSField                = { fg = red },
  TSProperty             = { fg = orange },
  TSConstructor          = { fg = blue },
  TSConditional          = { fg = magenta, gui = 'italic' },
  TSRepeat               = { fg = magenta, gui = 'italic' },
  TSException            = { fg = magenta, gui = 'italic' },
  TSLabel                = { fg = cyan_dark, gui = 'italic' },
  TSOperator             = { fg = magenta },
  TSKeyword              = { fg = magenta },
  TSKeywordFunction      = { fg = magenta },
  TSKeywordOperator      = { fg = magenta },
  TSType                 = { fg = blue },
  TSTypeBuiltin          = { fg = blue },
  TSStructure            = { fg = orange },
  TSInclude              = { fg = pink },
  TSTag                  = { fg = red },
  TSTagDelimiter         = { fg = comment },
  -- TSAnnotation = {},
  TSVariable = { fg = cyan },
  TSVariableBuiltin = { fg = cyan },
  -- TSDefinitionUsage = {},
  -- TSDefinition = {},
  -- TSCurrentScope                 = {},
  -- TSText                 = {},
  -- TSStrong               = {},
  -- TSEmphasis             = {},
  -- TSUnderline            = {},
  -- TSTitle                = {},
  -- TSLiteral              = {},
  -- TSURI                  = {},
  --
    TelescopeBorder      = { fg = bg_darker, bg = bg_darker },
    TelescopePromptBorder= { fg = bg_lighter, bg = bg_lighter },
    TelescopePromptNormal= { fg = white, bg = bg_lighter },
    TelescopePromptPrefix= { fg = red, bg = bg_lighter },
    TelescopeNormal      = { bg = bg_darker },
    TelescopePreviewTitle= { fg = bg, bg = green },
    TelescopePromptTitle = { fg = bg, bg = red },
    TelescopeResultsTitle= { fg = bg, bg = bg_darker }

}

-- }}}


-- Setting Neovim Terminal Color {{{

function M.setup()
  for group, styles in pairs(editor_syntax) do
    highlight(group, styles)
  end

  for group, styles in pairs(code_syntax) do
    highlight(group, styles)
  end

  for group, styles in pairs(plugin_syntax) do
    highlight(group, styles)
  end

  vim.api.nvim_set_var('terminal_color_0',          bg_lighter)
  vim.api.nvim_set_var('terminal_color_1',          red)
  vim.api.nvim_set_var('terminal_color_2',          green)
  vim.api.nvim_set_var('terminal_color_3',          yellow)
  vim.api.nvim_set_var('terminal_color_4',          blue)
  vim.api.nvim_set_var('terminal_color_5',          magenta)
  vim.api.nvim_set_var('terminal_color_6',          cyan)
  vim.api.nvim_set_var('terminal_color_7',          fg)
  vim.api.nvim_set_var('terminal_color_8',          grey)
  vim.api.nvim_set_var('terminal_color_9',          red)
  vim.api.nvim_set_var('terminal_color_10',         green)
  vim.api.nvim_set_var('terminal_color_11',         orange)
  vim.api.nvim_set_var('terminal_color_12',         blue)
  vim.api.nvim_set_var('terminal_color_13',         magenta)
  vim.api.nvim_set_var('terminal_color_14',         cyan)
  vim.api.nvim_set_var('terminal_color_15',         white)
  vim.api.nvim_set_var('terminal_color_background', bg_dark)
  vim.api.nvim_set_var('terminal_color_foreground', fg_light)
end

-- }}}

return M
