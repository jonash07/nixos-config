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
    brightnessctl

    # Drivers
    ntfs3g
    exfat
    # mtpfs

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
    neovim
    fzf
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
    prismlauncher
    qmmp
    obs-studio
    logseq
    handbrake
    overskride
    aseprite

    # Other
    librsvg
    gnome-icon-theme
    python3

    awww

  ];

}

