{ ... }:

{
  environment.shellAliases = {
    nrs = "sudo nixos-rebuild switch --flake ~/nixos-config/laptop#laptop";
    nrb = "sudo nixos-rebuild boot --flake ~/nixos-config/laptop#laptop";
    nrt = "sudo nixos-rebuild test --flake ~/nixos-config/laptop#laptop";
    nfu = "sudo nix flake update --flake ~/nixos-config/laptop";
  };

}

