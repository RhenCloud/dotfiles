-- Pull in the wezterm API
local wezterm = require 'wezterm'
-- local modal = wezterm.plugin.require 'https://github.com/MLFlexer/modal.wezterm.git'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- modal.apply_to_config(config)

-- config.default_prog = { '/bin/zsh', '-l' }

config.font = wezterm.font("Maple Mono NF CN", { weight = "Regular", italic = false })
config.font_size = 11

config.default_cursor_style = 'SteadyBar'

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Dracula (Official)"

config.window_background_opacity = 0.75

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    config.default_prog = { "pwsh.exe" }
end

-- 关闭时不进行确认
config.window_close_confirmation = "NeverPrompt"

config.hide_tab_bar_if_only_one_tab = true

-- 隐藏底部状态栏
config.window_decorations = "NONE"

-- 禁用滚动条
config.enable_scroll_bar = true

config.keys = {
    -- 垂直分屏
    { key = "d", mods = "CTRL|SHIFT", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
    -- 水平分屏
    { key = "s", mods = "CTRL|SHIFT", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
    -- 关闭当前窗格
    { key = "w", mods = "CTRL|SHIFT", action = wezterm.action({ CloseCurrentPane = { confirm = true } }) },
    -- 切换到左侧窗格
    { key = "h", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
    -- 切换到下方窗格
    { key = "j", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
    -- 切换到上方窗格
    { key = "k", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
    -- 切换到右侧窗格
    { key = "l", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
}

-- and finally, return the configuration to wezterm
return config
