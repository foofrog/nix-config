{pkgs, ...}: {
  programs = {
    dconf.enable = true;

    fish = {
      enable = true;
      useBabelfish = true;

      vendor = {
        config.enable = true;
        completions.enable = true;
        functions.enable = true;
      };
    };

    # INFO: https://nixos.wiki/wiki/Git
    git = {
      enable = true;
      lfs.enable = true;
    };

    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
      pinentryPackage = pkgs.pinentry-curses;
    };
  };
}
