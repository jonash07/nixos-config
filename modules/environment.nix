{ ... }:

{
  environment.variables = {
    EDITOR = "nvim";

  };

  environment.shellAliases = {
    sncg = "sudo nix-collect-garbage --delete-older-than 1d";
    ncg = "nix-collect-garbage --delete-older-than 1d";

  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";

  };

}

