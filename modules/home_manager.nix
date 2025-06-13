{ pkgs, inputs, ... }:

{
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "jim" = import ./../home.nix;
    };
  };
}
