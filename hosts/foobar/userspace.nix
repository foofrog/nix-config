{ ... }:

{
  imports = [
    ../../modules/users/foo/user.nix
    ../../modules/users/foo/home-depot/packages.nix
    ../../modules/users/foo/home-depot/programs.nix
  ];

  /*
  Here,
  The value is the Home Manager release version that was installed initially
  This helps avoid breakage when a new Home Manager release introduces backwards incompatible changes
  It's perfectly OK and recommended to leave it unchanged even after updating Home Manager
  */
  home.stateVersion = "24.05";

}
