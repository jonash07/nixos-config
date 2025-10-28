{ config, lib, ... }:

{
  systemd.services.bluetooth = {
    wantedBy = lib.mkForce (
      if config.programs.hyprland.enable then [ "graphical.target" ] else [ "multi-user.target" ]
    );
    after = lib.mkForce (
      [ "bluetooth.service" ] ++ lib.optionals config.programs.hyprland.enable [ "graphical.target" ]
    );
  };
}

