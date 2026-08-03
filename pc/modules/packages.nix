{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    btop-cuda
    mangohud
    aseprite
    deadlock-mod-manager
    lutris

  ];

}

