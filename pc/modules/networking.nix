{ ... }:

{
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;

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

