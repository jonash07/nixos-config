{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    btop-cuda
    mangohud
    deadlock-mod-manager
    lutris

  ];

}

