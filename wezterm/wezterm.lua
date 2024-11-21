local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config = {
  window_decorations = "RESIZE",

  color_scheme = 'tokyonight_night',

  font = wezterm.font('FantasqueSansM Nerd Font', { weight = 'Regular' }),
  font_size = 16.0,

  window_background_opacity = 1,
  macos_window_background_blur = 40,

  default_cursor_style = 'BlinkingUnderline',

  colors = {
    tab_bar = {
      background = '#1a1b26',

      active_tab = {
        bg_color = '#7aa2f7',
        fg_color = '#1a1b26',
        intensity = 'Normal',
        underline = 'None',
        italic = false,
        strikethrough = false,
      },

      inactive_tab = {
        bg_color = '#414868',
        fg_color = '#a9b1d6',
      },

      inactive_tab_hover = {
        bg_color = '#414868',
        fg_color = '#c0caf5',
        italic = false,
      },

      new_tab = {
        bg_color = '#565f89',
        fg_color = '#c0caf5',
      },

      new_tab_hover = {
        bg_color = '#565f89',
        fg_color = '#c0caf5',
        italic = false,
      },
    },
  },

  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  use_fancy_tab_bar = false,
  tab_max_width = 25,
  show_tab_index_in_tab_bar = true,
  switch_to_last_active_tab_when_closing_tab = true,

  max_fps = 60,

  keys = {
    { key = 'l', mods = 'ALT', action = wezterm.action.ShowLauncher },
  },

  initial_rows = 48,
  initial_cols = 180,

  enable_scroll_bar = false,

  window_close_confirmation = 'NeverPrompt'
}

return config
