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
    brightnessctl

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
    stress
    nmap
    steam-run
   
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
    chromium
    qbittorrent
    gparted
    pavucontrol
    libreoffice
    vscodium
    spotify
    universal-android-debloater
    prismlauncher
    obs-studio
    handbrake
    protontricks
    discord
    vesktop

    # Other
    librsvg
    gnome-icon-theme
    python3

  ];

}

