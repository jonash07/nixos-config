{ pkgs, ... }:

{
  xdg = {
    portal = {
      enable = true;
      extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
      config.common.default = "gtk";

    };

    # mime.defaultApplications = {
    #   "text/html" = "librewolf.desktop";

    # };

  };

}

