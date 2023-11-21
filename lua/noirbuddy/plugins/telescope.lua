local Group = require('colorbuddy').Group
local colors = require('colorbuddy').colors

-- Telescope colors
Group.new('TelescopeTitle', colors.noir_8)
Group.new('TelescopeBorder', colors.noir_7)
Group.new('TelescopeResultsNormal', colors.noir_0)
Group.new('TelescopeMatching', colors.noir_5)
Group.new('TelescopePromptCounter', colors.primary, nil)
Group.new('TelescopeSelection', nil, colors.noir_10)
