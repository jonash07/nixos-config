{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ 
    powertop
    lm_sensors
    btop
    discord

  ];

}

