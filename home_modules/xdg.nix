{ ... }:

{
  xdg.desktopEntries = {
    discord-canary = {
      name = "Discord Canary";
      exec = "NIXOS_OZONE_WL= ELECTRON_OZONE_PLATFORM_HINT= DiscordCanary --enable-blink-features=MiddleClickAutoscroll";
      terminal = false;
    };
  };
}

