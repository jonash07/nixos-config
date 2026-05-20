{ ... }:

{
  home.file.".config/hypr/misc.lua" = {
    enable = true;
    text = ''
------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "DP-1",
    mode     = "2560x1440@165",
    position = "0x0",
    scale    = "1",
})

hl.monitor({
    output   = "DP-2",
    mode     = "1920x1080@144",
    position = "2560x160",
    scale    = "1",
})


---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "pl",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = -0.7, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.7,
})
    '';

  };
  
}

