local mainMod = "SUPER"

-- Each monitor gets its own private ID block. Add an entry here for every
-- monitor you use — this table is the single source of truth for the whole setup.
local monitors = {
    ["eDP-1"] = 0, -- -> functional IDs 1-5
    ["HDMI-A-1"] = 10 -- -> functional IDs 11-15
}

-- Declare the workspaces: 5 per monitor, cosmetically labeled 1-5 on both
for monitor_name, offset in pairs(monitors) do
    for i = 1, 10 do
        hl.workspace_rule({
            workspace = tostring(offset + i),
            monitor = monitor_name,
            default_name = tostring(i), -- same label "1".."5" on every monitor
            default = (i == 1), -- monitor opens on its own "1" at startup
            persistent = true -- exists immediately, avoids the Waybar timing quirk
        })
    end
end

-- One set of keybinds, resolved per-monitor at press-time
for i = 1, 10 do
    local key = i % 10

    hl.bind(mainMod .. " + " .. key, function()
        local mon = hl.get_active_monitor()
        local offset = monitors[mon.name] or 0
        hl.dispatch(hl.dsp.focus({
            workspace = offset + i
        }))
    end)

    hl.bind(mainMod .. " + SHIFT + " .. key, function()
        local mon = hl.get_active_monitor()
        local offset = monitors[mon.name] or 0
        hl.dispatch(hl.dsp.window.move({
            workspace = offset + i,
            follow = true
        }))
    end)
end
