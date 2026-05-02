{ ... }:

{
  xdg.desktopEntries = {
    discord = {
      name = "Discord";
      exec = "env ELECTRON_OZONE_PLATFORM_HINT= env NIXOS_OZONE_WL= discord --enable-blink-features=MiddleClickAutoscroll";
      terminal = false;

    };

  };

}

