{ config, ... }:

{
  services.xserver = {
    enable = true;
    videoDrivers = [ "nvidia" ];

  };

  hardware.graphics = {
    enable = true;
    enable32Bit = true;

  };

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement = {
      enable = true;
      finegrained = false;

    };

    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;

  };

}

