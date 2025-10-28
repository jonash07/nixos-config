{ ... }:

{
  imports = [
    ./graphics.nix
    ./hardware.nix
    ./home_manager.nix
    ./packages.nix
    ./networking.nix
    ./services.nix
    ./systemd.nix
    ./users.nix
  ];
}
