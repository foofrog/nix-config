# TODO: Split `./programs.nix` into files under `./programs` directory for program-specific configurations
{pkgs, ...}: {
  imports = [
    ./helix.nix
    ./nushell.nix
    ./kitty.nix
    ./xdg.nix
  ];
  gtk = {
    enable = true;

    cursorTheme = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Ice";
    };
  };

  qt = {
    enable = true;

    platformTheme.name = "gtk";
    style = {
      package = pkgs.adwaita-qt;

      /*
      Detects the following automatically:
      adwaita, adwaita-dark, adwaita-highcontrast,
      adwaita-highcontrastinverse, breeze,
      bb10bright, bb10dark, cde, cleanlooks,
      gtk2, motif, plastique
      */
      name = "adwaita-dark";
    };
  };

  programs = {
    git = {
      enable = true;

      userName = "Foo the Frog";
      userEmail = "mountfooji@proton.me";

      signing = {
        signByDefault = true;

        key = "200257448AF7CE21";
      };
    };
  };
}
