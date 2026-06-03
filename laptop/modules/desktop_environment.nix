{ pkgs, ... }:

{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    withUWSM = true;

  };

  programs.uwsm.enable = true;

  programs.hyprlock.enable = true;

  services.hypridle.enable = true;

  environment.systemPackages = with pkgs; [
    waybar
    rofi
    mako
    nemo
    awww
    hyprshot
    hyprcursor
    rose-pine-hyprcursor

  ];

}

