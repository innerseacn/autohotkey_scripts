local wezterm = require 'wezterm';
return {
    default_prog = {"pwsh"},
    hide_tab_bar_if_only_one_tab = true,
    color_scheme = "Wombat",
    -- window_background_opacity = 0.95,
    font = wezterm.font("JetBrainsMono NF"),
    --font = wezterm.font_with_fallback({"JetBrains Mono", "Hack Nerd Font Mono"}),
}
