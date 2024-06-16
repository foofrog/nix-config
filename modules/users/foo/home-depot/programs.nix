# TODO: Split `./programs.nix` into files under `./programs` directory for program-specific configurations
{pkgs, ...}: {
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
    fish = {
      enable = true;

      shellAliases = {
        # Alias lengthy commands
        ".." = "cd ..";
        "..." = "cd ../..";
        "...." = "cd ../../..";
        "....." = "cd ../../../..";

        "jctl" = "journalctl -p 3 -xb";

        # Alias these coreutils with better alternatives
        "ls" = "eza -al --color=always --group-directories-first";
        "cat" = "bat --style header --style snip --style changes --style header";
      };

      interactiveShellInit = ''
        set fish_greeting
      '';
    };

    starship = {
      enable = true;
      enableFishIntegration = true;
    };

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
