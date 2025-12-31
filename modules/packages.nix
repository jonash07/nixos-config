{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Tools 
    ffmpeg-full
    rar
    zip
    unzip
    nettools
    arp-scan
    android-tools
    playerctl

    # Drivers
    ntfs3g
    exfat
    mtpfs

    # Cli
    wget 
    fastfetch 
    ani-cli 
    wl-clipboard
    xsel
    lshw
    yt-dlp
    ripgrep
    tree
    stress
   
    # Tui
    neovim
    fzf
    bluetui
    s-tui

    # Apps
    gimp
    qbittorrent
    gparted
    pavucontrol
    librewolf
    mpv
    discord-canary
    libreoffice
    vscodium
    kdePackages.dolphin
    spotify
    universal-android-debloater
    qimgv
    vlc

    # Other
    librsvg
    gnome-icon-theme
    wine-staging
    python314

  ];
}
