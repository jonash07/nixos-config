{ pkgs, ... }:

{
  virtualisation.libvirtd = {
    enable = true;
  };

  networking.iproute2.enable = true;
  
  programs.virt-manager.enable = true;

  environment.systemPackages = with pkgs; [
    qemu
    virt-viewer
    vde2
    netcat-openbsd
    libguestfs
    libvirt
    dnsmasq
  ];
}

