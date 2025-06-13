{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget
    fastfetch
    ani-cli
    kitty
    gimp
    discord
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
    # wineWow64Packages.waylandFull
    # (wineWow64Packages.waylandFull.override { wineBuild = "--enable-archs=i386,x86_6"; })
    wineWowPackages.waylandFull
    # wine64Packages.waylandFull
    winetricks
    q4wine
    cabextract
  ];
}
