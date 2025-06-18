{ pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
  };

  programs.btop = {
    enable = true;
    package = pkgs.btop-cuda;
  };
}
