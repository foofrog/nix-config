{pkgs, ...}: {
  fonts = {
    # use fonts specified by user rather than default ones
    enableDefaultPackages = false;
    fontDir.enable = true;

    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-emoji
      noto-fonts-extra

      # Ref: https://github.com/NixOS/nixpkgs/blob/nixos-24.05/pkgs/data/fonts/nerdfonts/shas.nix
      (nerdfonts.override {
        fonts = [
          "NerdFontsSymbolsOnly"
          "0xProto"
          # "JetBrainsMono"
          # "FireCode"
          # "Iosevka"
        ];
      })
    ];

    /*
    Here,
    Noto Color Emoji is explicity specified everywhere
    This is to override DejaVu's B&W emojis that might show up sometimes
    */
    fontconfig.defaultFonts = {
      serif = ["Noto Serif" "Noto Serif CJK JP" "Noto Color Emoji"];
      sansSerif = ["Noto Sans" "Noto Sans CJK JP" "Noto Color Emoji"];
      monospace = ["0xProto Nerd Font" "Noto Color Emoji"];
      emoji = ["Noto Color Emoji"];
    };
  };
}
