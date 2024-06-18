{...}: {
  imports = [
    ./steam.nix
  ];
  
  programs = {
    dconf.enable = true;

    # INFO: https://nixos.wiki/wiki/Git
    git = {
      enable = true;
      lfs.enable = true;
    };
  };
}
