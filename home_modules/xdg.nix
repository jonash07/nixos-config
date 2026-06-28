{ ... }:

{
  xdg.desktopEntries = {
    "com.discordapp.Discord" = {
      name = "Discord";
      exec = "env ELECTRON_OZONE_PLATFORM_HINT= env NIXOS_OZONE_WL= com.discordapp.Discord --enable-blink-features=MiddleClickAutoscroll";
      terminal = false;

    };

  };

}

