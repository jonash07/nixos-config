{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    brightnessctl
    powertop
    lm_sensors
    btop
  ];
}
