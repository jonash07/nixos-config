{ pkgs, ... }:

{
  services.displayManager = {
    sddm = {
      enable = true;
      theme = "catppuccin-mocha-mauve";
      wayland.enable = true;

    };

  };

  environment.systemPackages = [
  (pkgs.catppuccin-sddm.override {
    flavor = "mocha";
    accent = "mauve";
    font = "Mononoki Nerd Font";
    fontSize = "16";
   })

  ];

}

