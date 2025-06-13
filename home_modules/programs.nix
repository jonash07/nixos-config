{ pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        normal = {
          family = "Mononoki Nerd Font";
          style = "Regular";
        };
      };
    };
  };

  programs.btop = {
    enable = true;
    package = pkgs.btop-cuda;
  };

  # programs.neovim = {
  #   enable = true;
  #   plugins = with pkgs.vimPlugins; [
  #     nvchad
  #   ];
  # };

}
