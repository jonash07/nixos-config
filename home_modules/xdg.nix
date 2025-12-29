{ ... }:

{
  xdg.desktopEntries = {
    discord-canary = {
      name = "Discord Canary";
      exec = "env ELECTRON_OZONE_PLATFORM_HINT= env NIXOS_OZONE_WL= DiscordCanary --enable-blink-features=MiddleClickAutoscroll";
      terminal = false;
    };
  };
}

