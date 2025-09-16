{ pkgs, ... }:

{
  users.users.jim = {
    isNormalUser = true;
    extraGroups = [ "wheel" "libvirtd" ];
    # packages = with pkgs; [

    # ];
  };
}
