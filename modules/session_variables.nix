{ ... }:

{
  environment.variables = {
    EDITOR = "nvim";
  };

  environment.interactiveShellInit = ''
    alias nrs="sudo nixos-rebuild switch --flake /home/jim/nixos-config#default"
    alias nfu="sudo nix flake update --flake /home/jim/nixos-config#default"
  '';

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    # NIXOS_OZONE_WL = "1";
    ELECTRON_OZONE_PLATFORM_HINT = "x11";
  };
}
