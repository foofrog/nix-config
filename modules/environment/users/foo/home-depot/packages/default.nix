{pkgs, ...}: {
  home.packages = with pkgs; [
    bat
    bottom
    eza
    fuzzel
    skim
    xplr
    zoxide

    todo

    firefox

    qbittorrent

    # Diagnostic
    macchina
    bottom

    # Compression
    zip
    xz
    unzip
    p7zip
    bzip2
    pigz
    rar

    ouch # Command-line utility for easily compressing and decompressing files and directories

    # UI/UX
    niri
    swww

    jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-color-emoji

    # Eye-candy
    asciiquarium
    cmatrix
    cbonsai
    cowsay
    figlet
    lolcat
  ];
}
