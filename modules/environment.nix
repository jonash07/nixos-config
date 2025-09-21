{ ... }:

{
  environment.variables = {
    EDITOR = "nvim";
  };

  environment.shellAliases = {
    pnrs = "sudo nixos-rebuild switch --flake ~/nixos-config#pc";
    pnrb = "sudo nixos-rebuild boot --flake ~/nixos-config#pc";
    pnrt = "sudo nixos-rebuild test --flake ~/nixos-config#pc";
    lnrs = "sudo nixos-rebuild switch --flake ~/nixos-config#laptop";
    lnrb = "sudo nixos-rebuild boot --flake ~/nixos-config#laptop";
    lnrt = "sudo nixos-rebuild test --flake ~/nixos-config#laptop";
    nfu = "sudo nix flake update --flake ~/nixos-config";
    ncg = "sudo nix-collect-garbage --delete-older-than 1d";
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
  };

}
