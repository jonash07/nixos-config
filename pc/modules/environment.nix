{ ... }:

{
  environment.shellAliases = {
    nrs = "sudo nixos-rebuild switch --flake ~/nixos-config/pc#pc";
    nrb = "sudo nixos-rebuild boot --flake ~/nixos-config/pc#pc";
    nrt = "sudo nixos-rebuild test --flake ~/nixos-config/pc#pc";
    nfu = "nix flake update --flake ~/nixos-config/pc";

  };

}

