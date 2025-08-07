{ ... }:

{
  environment.variables = {
    EDITOR = "nvim";
  };

  environment.shellAliases = {
    nrs = "sudo nixos-rebuild switch --flake ~/nixos-config#default";
    nrb = "sudo nixos-rebuild boot --flake ~/nixos-config#default";
    nrt = "sudo nixos-rebuild test --flake ~/nixos-config#default";
    nfu = "sudo nix flake update --flake ~/nixos-config#default";
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
  };

}
