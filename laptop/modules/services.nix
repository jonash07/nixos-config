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

  services.xserver.videoDrivers = [ "modesetting" ];

  services.udisks2.enable = true;

  services.devmon.enable = true;

  services.openssh.enable = true;

  services.flatpak.enable = true;

  services.tlp = {
    enable = true;
      settings = {
        START_CHARGE_THRESH_BAT0 = 70;
      	STOP_CHARGE_THRESH_BAT0 = 90;
	START_CHARGE_THRESH_BAT1 = 70;
	STOP_CHARGE_THRESH_BAT1 = 90;
      };
  };

  services.undervolt = {
    enable = true;
    coreOffset = -90;
    gpuOffset = -90;
    uncoreOffset = -60;
    analogioOffset = -60;
    temp = 80;
    turbo = 0;
  };
} 
