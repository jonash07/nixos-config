{ ... }:

{
  services.udisks2 = {
    enable = true;
  
  };

  services.flatpak.enable = true;

  services.gvfs.enable = true;

  services.syncthing = {
    enable = true;

  };
  
}

