{ ... }:

{
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  services.udisks2.enable = true;

  services.devmon.enable = true;

  services.openssh.enable = true;

  services.samba = {
    enable = true;
    openFirewall = true;
    nmbd.enable = false;
    settings = {
      Share = {
        browseable = "yes";
        comment = "Shared folder";
        path = "/home/jim/VM_Shared";
        writable = "yes";
      };
    };
  };

  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];
  };

  services.flatpak.enable = true;
}

