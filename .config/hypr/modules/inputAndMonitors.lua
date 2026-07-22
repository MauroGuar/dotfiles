------------------
---- MONITORS ----
------------------
hl.monitor({
    output = "eDP-1",
    mode = "1920x1080",
    position = "1920x0",
    scale = "1"
})

hl.monitor({
    output = "HDMI-A-1",
    mode = "1920x1080",
    position = "0x0",
    scale = "1"
})

---------------
---- INPUT ----
---------------
hl.config({
    input = {
        kb_layout = "es",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",

        follow_mouse = 1,

        sensitivity = 0,

        touchpad = {
            natural_scroll = false
        }
    }
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})
