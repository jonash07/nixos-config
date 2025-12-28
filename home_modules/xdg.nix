{ ... }:

{
  xdg.desktopEntries = {
    discord-canary = {
      name = "Discord Canary";
      exec = "DiscordCanary --enable-blink-features=MiddleClickAutoscroll";
      terminal = false;
    };
  };
}

