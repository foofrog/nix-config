{...}: {
  imports = [
    ../../modules/users/foo/home-depot/packages.nix
    ../../modules/users/foo/home-depot/programs.nix
  ];

  programs.home-manager.enable = true;

  /*
  INFO:
  The value of `home.stateVersion` is the Home Manager release version installed initially for this system
  This is required to help avoid breakage when a new Home Manager release introduces backwards incompatible changes

  NOTE:
  It is perfectly OK and recommended to leave it unchanged even after a Home Manager update
  */
  home.stateVersion = "24.05";
}
