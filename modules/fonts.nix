{ pkgs, ... }: 

{
  
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
      
      # https://github.com/NixOS/nixpkgs/blob/nixos-24.05/pkgs/data/fonts/nerdfonts/shas.nix
      (nerdfonts.override {
        fonts = [
          "NerdFontsSymbolsOnly"
          
          "JetBrainsMono"
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
      monospace = ["JetBrainsMono Nerd Font" "Noto Color Emoji"];
      emoji = ["Noto Color Emoji"];
    };
  };

}
