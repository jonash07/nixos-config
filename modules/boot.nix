{ ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.timeout = 1;

  boot.kernelParams = [ "quiet" ];

  systemd.services.NetworkManager-wait-online.enable = false;
}
