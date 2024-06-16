{pkgs, ...}: {
  fonts = {
    enableDefaultPackages = false;
    fontDir.enable = true;

    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-emoji
      noto-fonts-extra

      # INFO: https://github.com/NixOS/nixpkgs/blob/nixos-24.05/pkgs/data/fonts/nerdfonts/shas.nix
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

    # NOTE: Noto Color Emoji is explicitly specified to potentially override emojis from other fonts
    fontconfig = {
      enable = true;

      defaultFonts = {
        serif = ["Noto Serif" "Noto Serif CJK JP" "Noto Color Emoji"];
        sansSerif = ["Noto Sans" "Noto Sans CJK JP" "Noto Color Emoji"];
        monospace = ["0xProto Nerd Font" "Noto Color Emoji"];
        emoji = ["Noto Color Emoji"];
      };
    };
  };
}
