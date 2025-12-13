{ ... }:

{
  xdg.desktopEntries = {
    discord-canary = {
      name = "Discord Canary";
      exec = "env ELECTRON_OZONE_PLATFORM_HINT= DiscordCanary --enable-blink-features=MiddleClickAutoscroll";
      terminal = false;
    };
  };
}

