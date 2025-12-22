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
    xremap

    # Drivers
    ntfs3g
    exfat
    mtpfs

    # Cli
    wget 
    fastfetch 
    ani-cli 
    wl-clipboard
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
    lutris
    pavucontrol
    librewolf
    mpv
    discord-canary
    libreoffice
    vscodium
    brasero
    kdePackages.dolphin
    spotify
    # spicetify-cli
    universal-android-debloater

    # Other
    hyprshot
    hyprcursor
    rose-pine-hyprcursor
    librsvg
    gnome-icon-theme
    wine-staging
    python314

  ];
}
