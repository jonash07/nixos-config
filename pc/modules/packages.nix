{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    kdePackages.kdenlive
    btop-cuda
    mangohud
    aseprite
    deadlock-mod-manager

  ];

}

