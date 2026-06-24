{ ... }:

{
  networking = {
    hostName = "shade";
    networkmanager = {
      enable = true;
      wifi.powersave = true;

    };

    firewall = {
      allowedUDPPorts = [
        6567
      ];
      allowedTCPPorts = [
        6567
      ];
    };

  };

}

