{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ 
    btop
    blueman
    brightnessctl
    udiskie
    quickshell

  ];

}

