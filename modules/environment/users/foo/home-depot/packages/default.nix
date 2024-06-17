{pkgs, ...}: {
  home.packages = with pkgs; [
    kitty

    bat
    bottom
    eza
    fuzzel
    skim
    xplr
    zoxide

    firefox

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
