{ pkgs, ... }:

{
  networking = {
    hostName = "nixos";
    networkmanager = {
      enable = true;
      plugins = with pkgs; [
        networkmanager-openvpn
      ];
    };

    firewall = {
      allowedUDPPorts = [
        8080
      ];
      
      allowedTCPPorts = [
        8080
      ];
    };

  };

}

