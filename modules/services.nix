{ ... }:

{
  services = {
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;

    };

    openssh = {
      enable = true;
      startWhenNeeded = true;

    };

    flatpak.enable = true;

    gvfs.enable = true;

  };

}

