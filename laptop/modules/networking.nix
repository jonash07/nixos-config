{ pkgs, ... }:

{
  networking = {
    hostName = "shade";
    networkmanager = {
      enable = true;
      wifi.powersave = true;
      plugins = with pkgs; [
        networkmanager-openvpn
      ];
 
    };

  };

}

