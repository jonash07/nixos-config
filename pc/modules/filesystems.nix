{ ... }:

{
  fileSystems."/hdd" = {
    device = "/dev/disk/by-uuid/2FF1478536F8CCF6";
    fsType = "ntfs";
    options = [ "nofail" ];
  };
}

