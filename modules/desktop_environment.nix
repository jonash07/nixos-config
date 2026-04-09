{ pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    withUWSM = true;

  };

  programs.uwsm.enable = true;

  environment.systemPackages = with pkgs; [
    waybar
    rofi
    mako
    awww
    hyprshot
    hyprcursor
    rose-pine-hyprcursor

  ];

}

