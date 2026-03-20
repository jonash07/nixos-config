{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    kdePackages.kdenlive
    btop-cuda
    mangohud
    lutris
    wine
  ];

}

