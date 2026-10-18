{ ... }:

{
  environment = {
    variables = {
      EDITOR = "nvim";

    };

    shellAliases = {
      sncg = "sudo nix-collect-garbage --delete-older-than 1d";
      ncg = "nix-collect-garbage --delete-older-than 1d";
      nrlg = "nixos-rebuild list-generations";

    };

    sessionVariables = {
      WLR_NO_HARDWARE_CURSORS = "1";

    };

  };

}

