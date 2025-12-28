{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    davinci-resolve
    btop-cuda
    mangohud
    lutris
  ];
}
