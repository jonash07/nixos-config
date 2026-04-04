{ pkgs, ... }:

{
  virtualisation.libvirtd.enable = true;

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

  services.samba-wsdd = {
    enable = true;
    openFirewall = true;

  };

  services.samba = {
    enable = true;
    openFirewall = true;
    settings = {
      Virtual = {
        browseable = "yes";
        path = "/VMshared/";
        writeable = "yes";
        "read only" = "no";
        "guest ok" = "no";
        public = "yes";
        "create mask" = "0757";
        "directory mask" = "0757";

      };

    };

  };

}

