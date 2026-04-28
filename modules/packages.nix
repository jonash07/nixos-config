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
    gimp
    qbittorrent
    gparted
    pavucontrol
    mpv
    discord-canary
    libreoffice
    vscodium
    nemo
    spotify
    universal-android-debloater
    qimgv
    vlc
    prismlauncher
    obs-studio
    logseq
    handbrake
    overskride
    aseprite
    ungoogled-chromium

    # Other
    librsvg
    gnome-icon-theme
    python3

  ];

}

