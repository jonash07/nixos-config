{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget
    fastfetch
    ani-cli
    kitty
    gimp 
    wl-clipboard
    lshw
    freetype
    ffmpeg-full
    rar
    zip
    unzip
    yt-dlp
    davinci-resolve
    audacity
    ripgrep
    neovim
    libgcc
    cmake
    qbittorrent
    ntfs3g
    exfat
    hyprshot
    wineWowPackages.waylandFull
    winetricks
    q4wine
    cabextract
    hyprcursor
    xcur2png
    gparted  
    tree
  ];
}
