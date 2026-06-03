{ ... }:

{
  services = {
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

  udisks2.enable = true;

  };

} 

