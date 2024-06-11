# ToDo: Split `./programs.nix` into files under `./programs` for program-specific configurations respectively
{ pkgs, ... }:

{
  
  home-manager.users.foo = {
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

    programs.fish = {
      enable = true;
      shellAliases = {
        ".." = "cd ..";
        "..." = "cd ../..";
        "...." = "cd ../../..";
        "....." = "cd ../../../..";

        "ls" = "eza -al --color=always --group-directories-first";
        "cat" = "bat --style header --style snip --style changes --style header";

        "jctl" = "journalctl -p 3 -xb";
      };
      interactiveShellInit = ''
        set fish_greeting
      '';
    };

    programs.starship = {
      enable = true;
      enableFishIntegration = true;
    };

    programs.git = {
      enable = true;
      userName = "Foo the Frog";
      userEmail = "mountfooji@proton.me";
    };

    # Let `home-manager` install and manage itself
    programs.home-manager.enable = true;
  };

}
