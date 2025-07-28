{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    nerd-fonts.mononoki
  ];

  fonts.fontconfig.subpixel.lcdfilter = "none";
}
