local Group = require('colorbuddy').Group
local colors = require('colorbuddy').colors

-- Telescope colors
Group.new('GitSignsAdd', colors.diff_add, colors.nb_background)
Group.new('GitSignsChange', colors.diff_change, colors.nb_background)
Group.new('GitSignsDelete', colors.diff_delete, colors.nb_background)
