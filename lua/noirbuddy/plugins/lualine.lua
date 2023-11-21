local cb = require('colorbuddy')

local Group = cb.Group
local groups = cb.groups
local colors = cb.colors

-- TODO: Should these be in a "setup" function?
Group.link('lualine_b_diff_added_normal', colors.diff_add)
Group.link('lualine_b_diff_added_insert', colors.diff_add)
Group.link('lualine_b_diff_added_visual', colors.diff_add)
Group.link('lualine_b_diff_added_replace', colors.diff_add)
Group.link('lualine_b_diff_added_command', colors.diff_add)
Group.link('lualine_b_diff_added_terminal', colors.diff_add)
Group.link('lualine_b_diff_added_inactive', colors.diff_add)

Group.link('lualine_b_diff_modified_normal', colors.diff_change)
Group.link('lualine_b_diff_modified_insert', colors.diff_change)
Group.link('lualine_b_diff_modified_visual', colors.diff_change)
Group.link('lualine_b_diff_modified_replace', colors.diff_change)
Group.link('lualine_b_diff_modified_command', colors.diff_change)
Group.link('lualine_b_diff_modified_terminal', colors.diff_change)
Group.link('lualine_b_diff_modified_inactive', colors.diff_change)

Group.link('lualine_b_diff_removed_normal', colors.diff_delete)
Group.link('lualine_b_diff_removed_insert', colors.diff_delete)
Group.link('lualine_b_diff_removed_visual', colors.diff_delete)
Group.link('lualine_b_diff_removed_replace', colors.diff_delete)
Group.link('lualine_b_diff_removed_command', colors.diff_delete)
Group.link('lualine_b_diff_removed_terminal', colors.diff_delete)
Group.link('lualine_b_diff_removed_inactive', colors.diff_delete)

Group.new('lualine_b_diagnostics_error_normal', colors.diagnostic_error)
Group.new('lualine_b_diagnostics_error_insert', colors.diagnostic_error)
Group.new('lualine_b_diagnostics_error_visual', colors.diagnostic_error)
Group.new('lualine_b_diagnostics_error_replace', colors.diagnostic_error)
Group.new('lualine_b_diagnostics_error_command', colors.diagnostic_error)
Group.new('lualine_b_diagnostics_error_terminal', colors.diagnostic_error)
Group.new('lualine_b_diagnostics_error_inactive', colors.diagnostic_error)

Group.new('lualine_b_diagnostics_warn_normal', colors.diagnostic_warning)
Group.new('lualine_b_diagnostics_warn_insert', colors.diagnostic_warning)
Group.new('lualine_b_diagnostics_warn_visual', colors.diagnostic_warning)
Group.new('lualine_b_diagnostics_warn_replace', colors.diagnostic_warning)
Group.new('lualine_b_diagnostics_warn_command', colors.diagnostic_warning)
Group.new('lualine_b_diagnostics_warn_terminal', colors.diagnostic_warning)
Group.new('lualine_b_diagnostics_warn_inactive', colors.diagnostic_warning)

Group.new('lualine_b_diagnostics_info_normal', colors.diagnostic_info)
Group.new('lualine_b_diagnostics_info_insert', colors.diagnostic_info)
Group.new('lualine_b_diagnostics_info_visual', colors.diagnostic_info)
Group.new('lualine_b_diagnostics_info_replace', colors.diagnostic_info)
Group.new('lualine_b_diagnostics_info_command', colors.diagnostic_info)
Group.new('lualine_b_diagnostics_info_terminal', colors.diagnostic_info)
Group.new('lualine_b_diagnostics_info_inactive', colors.diagnostic_info)

Group.new('lualine_b_diagnostics_hint_normal', colors.diagnostic_hint)
Group.new('lualine_b_diagnostics_hint_insert', colors.diagnostic_hint)
Group.new('lualine_b_diagnostics_hint_visual', colors.diagnostic_hint)
Group.new('lualine_b_diagnostics_hint_replace', colors.diagnostic_hint)
Group.new('lualine_b_diagnostics_hint_command', colors.diagnostic_hint)
Group.new('lualine_b_diagnostics_hint_terminal', colors.diagnostic_hint)
Group.new('lualine_b_diagnostics_hint_inactive', colors.diagnostic_hint)

Group.link('lualine_x_diff_added_normal', colors.diff_add)
Group.link('lualine_x_diff_added_insert', colors.diff_add)
Group.link('lualine_x_diff_added_visual', colors.diff_add)
Group.link('lualine_x_diff_added_replace', colors.diff_add)
Group.link('lualine_x_diff_added_command', colors.diff_add)
Group.link('lualine_x_diff_added_terminal', colors.diff_add)
Group.link('lualine_x_diff_added_inactive', colors.diff_add)

Group.link('lualine_x_diff_modified_normal', colors.diff_change)
Group.link('lualine_x_diff_modified_insert', colors.diff_change)
Group.link('lualine_x_diff_modified_visual', colors.diff_change)
Group.link('lualine_x_diff_modified_replace', colors.diff_change)
Group.link('lualine_x_diff_modified_command', colors.diff_change)
Group.link('lualine_x_diff_modified_terminal', colors.diff_change)
Group.link('lualine_x_diff_modified_inactive', colors.diff_change)

Group.link('lualine_x_diff_removed_normal', colors.diff_delete)
Group.link('lualine_x_diff_removed_insert', colors.diff_delete)
Group.link('lualine_x_diff_removed_visual', colors.diff_delete)
Group.link('lualine_x_diff_removed_replace', colors.diff_delete)
Group.link('lualine_x_diff_removed_command', colors.diff_delete)
Group.link('lualine_x_diff_removed_terminal', colors.diff_delete)
Group.link('lualine_x_diff_removed_inactive', colors.diff_delete)

Group.new('lualine_x_diagnostics_error_normal', colors.diagnostic_error)
Group.new('lualine_x_diagnostics_error_insert', colors.diagnostic_error)
Group.new('lualine_x_diagnostics_error_visual', colors.diagnostic_error)
Group.new('lualine_x_diagnostics_error_replace', colors.diagnostic_error)
Group.new('lualine_x_diagnostics_error_command', colors.diagnostic_error)
Group.new('lualine_x_diagnostics_error_terminal', colors.diagnostic_error)
Group.new('lualine_x_diagnostics_error_inactive', colors.diagnostic_error)

Group.new('lualine_x_diagnostics_warn_normal', colors.diagnostic_warning)
Group.new('lualine_x_diagnostics_warn_insert', colors.diagnostic_warning)
Group.new('lualine_x_diagnostics_warn_visual', colors.diagnostic_warning)
Group.new('lualine_x_diagnostics_warn_replace', colors.diagnostic_warning)
Group.new('lualine_x_diagnostics_warn_command', colors.diagnostic_warning)
Group.new('lualine_x_diagnostics_warn_terminal', colors.diagnostic_warning)
Group.new('lualine_x_diagnostics_warn_inactive', colors.diagnostic_warning)

Group.new('lualine_x_diagnostics_info_normal', colors.diagnostic_info)
Group.new('lualine_x_diagnostics_info_insert', colors.diagnostic_info)
Group.new('lualine_x_diagnostics_info_visual', colors.diagnostic_info)
Group.new('lualine_x_diagnostics_info_replace', colors.diagnostic_info)
Group.new('lualine_x_diagnostics_info_command', colors.diagnostic_info)
Group.new('lualine_x_diagnostics_info_terminal', colors.diagnostic_info)
Group.new('lualine_x_diagnostics_info_inactive', colors.diagnostic_info)

Group.new('lualine_x_diagnostics_hint_normal', colors.diagnostic_hint)
Group.new('lualine_x_diagnostics_hint_insert', colors.diagnostic_hint)
Group.new('lualine_x_diagnostics_hint_visual', colors.diagnostic_hint)
Group.new('lualine_x_diagnostics_hint_replace', colors.diagnostic_hint)
Group.new('lualine_x_diagnostics_hint_command', colors.diagnostic_hint)
Group.new('lualine_x_diagnostics_hint_terminal', colors.diagnostic_hint)
Group.new('lualine_x_diagnostics_hint_inactive', colors.diagnostic_hint)

local M = {}

-- Lualine requires hex codes,
-- But colorbuddy doesn't output hex codes,
-- So we use noirbuddy's `all()` method to get hex codes :)
local c = require('noirbuddy.colors').all()

M.theme = {
  normal = {
    a = { fg = c.noir_2, bg = c.noir_8, gui = 'bold' },
    b = { fg = c.noir_3, bg = c.noir_9 },
    c = { fg = c.noir_3, bg = c.noir_8 },
  },
  insert = { a = { fg = c.background, bg = c.primary, gui = 'bold' } },
  visual = { a = { fg = c.background, bg = c.secondary, gui = 'bold' } },
  replace = { a = { fg = c.background, bg = c.primary, gui = 'bold' } },
  inactive = {
    a = { fg = c.noir_1, bg = c.background },
    b = { fg = c.noir_1, bg = c.background },
    c = { fg = c.noir_1, bg = c.background },
  },
}

M.sections = {
  lualine_a = { 'mode' },
  lualine_b = { 'branch', 'diff', { 'diagnostics', color = { bg = c.background } } },
  lualine_c = { 'filename' },
  lualine_x = { 'encoding', { 'filetype', colored = false } },
  lualine_y = { 'progress' },
  lualine_z = { 'location' }
}

M.inactive_sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = { 'filename' },
  lualine_x = { 'location' },
  lualine_y = {},
  lualine_z = {}
}

return M
