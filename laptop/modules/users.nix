{ pkgs, ... }:

{
  users.users.alice = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "cdrom" ];
  };
}

