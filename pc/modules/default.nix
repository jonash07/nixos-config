{ ... }:

{
  imports = [
    ./environment.nix
    ./graphics.nix
    ./hardware.nix
    ./home_manager.nix
    ./login_manager.nix
    ./packages.nix
    ./networking.nix
    ./services.nix
    ./users.nix
    # ./virtualisation.nix
  ];
}
