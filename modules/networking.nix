{ pkgs, ... }:

{
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  # Configure network proxy if neccessary
  # networking.proxy.default = "http://user:password#proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
}
