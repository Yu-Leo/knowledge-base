local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'OneDark (base16)'

config.colors = {
  foreground = '#a0a8b7',
  background = '#1f2329',
  cursor_bg = '#a0a8b7',
  cursor_fg = 'black',
  cursor_border = '#a0a8b7',
  ansi = {
    '#0e1013',
    '#e55561',
    '#8ebd6b',
    '#e2b86b',
    '#4fa6ed',
    '#c678dd',
    '#48b0bd',
    '#abb2bf',
  },

  brights = {
    '#5c6370',
    '#e06c75',
    '#98c379',
    '#d19a66',
    '#61afef',
    '#c678dd',
    '#56b6c2',
    '#ffffff',
  },
}

config.font = wezterm.font 'JetBrains Mono'
config.font_size = 12

config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.enable_scroll_bar = false

config.window_frame = {
  -- The font used in the tab bar.
  -- Roboto Bold is the default; this font is bundled
  -- with wezterm.
  -- Whatever font is selected here, it will have the
  -- main font setting appended to it to pick up any
  -- fallback fonts you may have used there.
  font = wezterm.font { family = 'JetBrains Mono', weight = 'Bold' },

  -- The size of the font in the tab bar.
  -- Default to 10.0 on Windows but 12.0 on other systems
  font_size = 15.0,

  -- The overall background color of the tab bar when
  -- the window is focused
  active_titlebar_bg = '#333333',

  -- The overall background color of the tab bar when
  -- the window is not focused
  inactive_titlebar_bg = '#333333',
}

config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = {
  -- Turn off the default CMD-m Hide action, allowing CMD-m to
  -- be potentially recognized and handled by the tab
  {
    key = 'w',
    mods = 'ALT',
    action = wezterm.action.CloseCurrentTab { confirm = true },
  },

  {
    key = 'w',
    mods = 'ALT',
    action = wezterm.action.CloseCurrentTab { confirm = true },
  },
  {
    key = 't',
    mods = 'ALT',
    action = wezterm.action.SpawnTab 'CurrentPaneDomain',
  },
  {
    key = '|',
    mods = 'LEADER|SHIFT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
}

for i = 1, 8 do
  table.insert(config.keys, {
    key = tostring(i),
    mods = 'ALT',
    action = wezterm.action.ActivateTab(i - 1),
  })
end

wezterm.on('update-right-status', function(window, pane)
  local date = wezterm.strftime '%Y-%m-%d %H:%M'

  -- Make it italic and underlined
  window:set_right_status(wezterm.format {
    -- { Attribute = { Underline = 'None' } },
    -- { Attribute = { Italic = false } },
    { Text = date },
  })
end)

wezterm.on('gui-startup', function(cmd)
    local active_screen = wezterm.gui.screens()["active"]
    local _, _, window = wezterm.mux.spawn_window(cmd or {})

    if active_screen.width < 2560 then
        -- Laptop: open full screen
        window:gui_window():maximize()
    else
        -- Desktop: place on the right half of the screen
        window:gui_window():set_position(active_screen.width / 2, 0)
        window:gui_window():set_inner_size(active_screen.width / 2, active_screen.height)
    end 
end)
-- and finally, return the configuration to wezterm
return config
