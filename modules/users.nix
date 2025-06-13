{ pkgs, ... }:

{
  users.users.jim = {
    isNormalUser = true;
    extraGroups = [ "wheel" "libvirt" "libvirtd" ];
    packages = with pkgs; [
      tree
    ];
  };
}
