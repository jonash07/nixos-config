{ ... }:

{
  environment.variables = {
    EDITOR = "nvim";
  };

  environment.shellAliases = {
    pnrs = "sudo nixos-rebuild switch --flake ~/nixos-config#pc";
    pnrb = "sudo nixos-rebuild boot --flake ~/nixos-config#pc";
    pnrt = "sudo nixos-rebuild test --flake ~/nixos-config#pc";
    pnfu = "sudo nix flake update --flake ~/nixos-config#pc";
    lnrs = "sudo nixos-rebuild switch --flake ~/nixos-config#laptop";
    lnrb = "sudo nixos-rebuild boot --flake ~/nixos-config#laptop";
    lnrt = "sudo nixos-rebuild test --flake ~/nixos-config#laptop";
    lnfu = "sudo nix flake update --flake ~/nixos-config#laptop";
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
  };

}
