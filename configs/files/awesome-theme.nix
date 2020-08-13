colors:
''
-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

return {
  bg_normal     = "${colors.base0}",
  bg_focus      = "${colors.base1}",
  bg_urgent     = "${colors.base8}",
  bg_minimize   = "${colors.base2}",
  bg_systray    = "${colors.base0}",

  fg_normal     = "${colors.base7}",
  fg_focus      = "${colors.base8}",
  fg_urgent     = "${colors.base8}",
  fg_minimize   = "${colors.base8}",

  border_normal = "${colors.base0}",
  border_focus  = "${colors.base1}",
  border_marked = "${colors.base13}",
}
''
