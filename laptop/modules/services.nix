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

    tlp = {
      enable = true;
      settings = {
        START_CHARGE_THRESH_BAT0 = 70;
        STOP_CHARGE_THRESH_BAT0 = 90;
        START_CHARGE_THRESH_BAT1 = 70;
        STOP_CHARGE_THRESH_BAT1 = 90;

        };

    };

    undervolt = {
      enable = true;
      coreOffset = -90;
      gpuOffset = -90;
      uncoreOffset = -60;
      analogioOffset = -60;
      temp = 80;
      turbo = 0;

    };

  };

} 

