{ inputs, ... }:

{
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      "alice" = import ./../home.nix;

    };

  };

}

