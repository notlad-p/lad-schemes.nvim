local scheme = vim.g.lad_schemes_theme

local color_scheme = require("lad-schemes.colors").get_scheme(scheme)
local colors = color_scheme.colors
local theme = color_scheme.theme

return {
  normal = {
    a = { fg = colors.black, bg = colors.green, gui = "bold" },
    b = { fg = colors.orange, bg = colors.one_bg },
    c = { fg = colors.fg, bg = colors.bg },
  },
  insert = {
    a = { fg = colors.black, bg = theme.base0D, gui = "bold" },
    b = { fg = colors.orange, bg = colors.one_bg },
    c = { fg = colors.fg, bg = colors.bg },
  },
  visual = {
    a = { fg = colors.black, bg = colors.dark_purple, gui = "bold" },
    b = { fg = colors.orange, bg = colors.one_bg },
    c = { fg = colors.fg, bg = colors.bg },
  },
  replace = {
    a = { fg = colors.black, bg = colors.red, gui = "bold" },
    b = { fg = colors.orange, bg = colors.one_bg },
    c = { fg = colors.fg, bg = colors.bg },
  },
  inactive = {
    a = { fg = colors.black, bg = colors.bg },
    b = { fg = colors.orange, bg = colors.one_bg },
    c = { fg = colors.fg, bg = colors.bg },
  },

  terminal = {
    a = { fg = colors.black, bg = theme.base09, gui = "bold" },
    b = { fg = colors.orange, bg = colors.one_bg },
  },

  command = {
    a = { fg = colors.black, bg = theme.base09, gui = "bold" },
    b = { fg = colors.orange, bg = colors.one_bg },
  },
}
