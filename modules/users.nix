{ ... }:

{
  users.users.jim = {
    isNormalUser = true;
    extraGroups = [ "wheel" "libvirtd" ];
  };
}
