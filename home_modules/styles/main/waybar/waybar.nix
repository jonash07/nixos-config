{ ... }:

{
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 55;
        spacing = 4;
        
        modules-left = [
          "custom/logo"
          "hyprland/workspaces"
        ];

        modules-center = [
          "mpris"
        ];

        modules-right = [
          "tray" 
          "pulseaudio"
          "bluetooth"
          "network"
          "clock"
          "cpu"
          "memory"
          "custom/power"
        ];

        "cpu" = {
          format = "󰻠 {usage}%";
          interval = 1;
        };

        "memory" = {
          format = "  {}%";
          interval = 1;
        };

        "custom/logo" = {
          format = " ";
        };

        "network" = {
          format = " ";
        };

        "hyprland/workspaces" = {
          disable-scroll = true;
          all-outputs = true;
          on-click = "activate";
          format = "{icon}";
          format-icons = {
            "1" = "1";
            "2" = "2";
            "3" = "3";
            "4" = "4";
            "5" = "5";
            "6" = "6";
            "7" = "7";
            "8" = "8";
            "9" = "9";
            "0" = "0";
          };
        };

        "mpris" = {
          format = "{player_icon} {title} - {artist}";
          format-paused = "{status_icon} <i>{title} - {artist}</i>";
          player-icons = {
            default = "";
            mpv = "";
          };
          status-icons = {
            paused = "";
          };
        };

        "pulseaudio" = {
          format = "󰝚 {volume}%";
          on-click = "pavucontrol";
        };

        "clock" = {
          interval = 1;
          format = "{:%H:%M:%S}  ";
          tooltip-format = "<tt><small>{calendar}</small></tt>";
          calendar = {
            mode = "year";
            mode-mon-col = 3;
            weeks-pos = "right";
            on-scroll = 1;
            format = {
              months = "<span color='#ffead3'><b>{}</b></span>";
              days = "<span color='#ecc6d9'><b>{}</b></span>";
              weeks =  "<span color='#99ffdd'><b>W{}</b></span>";
              weekdays = "<span color='#ffcc66'><b>{}</b></span>";
              today = "<span color='#ff6699'><b><u>{}</u></b></span>";
            };
          };
        };

        "custom/power" = {
          format = "⏻ ";
        };

      };
    };
  };
}
