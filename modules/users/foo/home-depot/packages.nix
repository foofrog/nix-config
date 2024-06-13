{pkgs, ...}: {
  home.packages = with pkgs; [
    bat
    eza
    skim
    xplr
    zoxide

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

    # Development
    zulu

    # UI/UX
    niri

    jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-color-emoji

    # Eye-candy
    asciiquarium
    cmatrix
    cbonsai
    cowsat
    figlet
    lolcat
  ];
}
