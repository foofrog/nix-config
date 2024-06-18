{...}: {
  imports = [
    ../../modules/environment/users/foo/home-depot/packages
    ../../modules/environment/users/foo/home-depot/programs
    ../../modules/environment/users/foo/home-depot/services
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
