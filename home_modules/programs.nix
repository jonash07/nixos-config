{ ... }:

{
  programs.librewolf.enable = true;

  nixpkgs.config.permittedInsecurePackages = [
    "librewolf-152.0-1"
    "librewolf-unwrapped-152.0-1"
  ];

}

