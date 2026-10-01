{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Tools 
    ffmpeg-full
    rar
    zip
    unzip
    p7zip
    nettools
    arp-scan
    android-tools
    playerctl

    # Drivers
    ntfs3g
    exfat

    # Cli
    starship
    wget 
    fastfetch 
    ani-cli 
    wl-clipboard
    xsel
    lshw
    yt-dlp
    ripgrep
    tree
    nmap
    steam-run
    rivalcfg

    # Tui
    vim
    fzf
    s-tui

    # Apps
    alacritty
    mpv
    vlc
    qimgv
    gimp
    librewolf
    chromium
    qbittorrent
    gparted
    libreoffice
    vscodium
    spotify
    feishin
    universal-android-debloater
    prismlauncher
    handbrake
    protontricks
    broadcast-box

    # Other
    librsvg
    gnome-icon-theme
    python3

  ];

}

