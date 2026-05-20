{ ... }:

{
  home.file.".config/hypr/misc.lua" = {
    enable = true;
    text = ''
------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
-- hl.monitor({
--     output   = "eDP-1",
--     mode     = "1920x1080@60",
--     position = "0x0",
--     scale    = "1",
-- })


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

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = false,
            disable_while_typing = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

Example per-device config
See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})
    '';
  
  };

}

