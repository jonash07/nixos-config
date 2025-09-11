{ ... }:

{
  wayland.windowManager.hyprland = {
    settings = {
      ################
      ### MONITORS ###
      ################
      
      # See https://wiki.hyprland.org/Configuring/Monitors/
      monitor = [
        "DP-1, 2560x1440@165, 0x0, 1"
        "DP-2, 1920x1080@144, 2560x160, 1"
      ];
    };
  };
}

