{ pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.timeout = 1;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  boot.kernelParams = [ "quiet" ];

  systemd.services.NetworkManager-wait-online.enable = false;
}

