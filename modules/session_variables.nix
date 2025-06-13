{ pkgs, ... }:

{
  environment.variables = {
    EDITOR = "nvim";
  };

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    # NIXOS_OZONE_WL = "1";
    ELECTRON_OZONE_PLATFORM_HINT = "x11";
  };
}
