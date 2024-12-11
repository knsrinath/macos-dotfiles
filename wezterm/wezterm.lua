local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = {}

wezterm.on('gui-startup', function(cmd)
  local window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config = {
  window_decorations = "RESIZE | MACOS_FORCE_DISABLE_SHADOW",

  color_scheme = 'Ayu Dark (Gogh)',

  font = wezterm.font('FantasqueSansM Nerd Font', { weight = 'Regular' }),
  font_size = 15.0,

  window_background_opacity = 1,
  macos_window_background_blur = 100,

  default_cursor_style = 'BlinkingUnderline',

  colors = {
    tab_bar = {
      background = '#0D1017',

      active_tab = {
        bg_color = '#73B8FF',
        fg_color = '#0D1017',
        intensity = 'Normal',
        underline = 'None',
        italic = false,
        strikethrough = false,
      },

      inactive_tab = {
        bg_color = '#131721',
        fg_color = '#BFBDB6',
      },

      inactive_tab_hover = {
        bg_color = '#131721',
        fg_color = '#BFBDB6',
        italic = false,
      },

      new_tab = {
        bg_color = '#565B66',
        fg_color = '#BFBDB6',
      },

      new_tab_hover = {
        bg_color = '#565B66',
        fg_color = '#BFBDB6',
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

  initial_rows = 150,
  initial_cols = 200,

  enable_scroll_bar = false,

  window_close_confirmation = 'NeverPrompt'
}

return config
