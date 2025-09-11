{ pkgs, ... }:

{
  users.users.alice = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      rose-pine-hyprcursor
      rose-pine-cursor 
      discord-canary
      spotify
      spicetify-cli
      nemo
      libreoffice
    ];
  };
}
