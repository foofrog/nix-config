{pkgs, ...}: {
  imports = [
    ./filesystems.nix
    ../../modules/applications/packages.nix
    ../../modules/applications/programs/opengl.nix
    ../../modules/applications/programs/steam.nix
    ../../modules/applications/programs.nix
    ../../modules/applications/services.nix
    ../../modules/bootloader.nix
    ../../modules/fonts.nix
    ../../modules/graphics/amd.nix
    ../../modules/graphics/nvidia.nix
    ../../modules/internet.nix
    ../../modules/kernel.nix
    ../../modules/localization.nix
    ../../modules/peripherals/audio.nix
    ../../modules/peripherals/bluetooth.nix
    ../../modules/peripherals/tablet.nix
    ../../modules/power-management.nix
    ../../modules/users/foo/user.nix
  ];

  # Enable flakes for this configuration
  nix.settings.experimental-features = ["nix-command" "flakes"];

  /*
  INFO:
  The value of `stateVersion` is the NixOS release version installed initially for this system
  This is required for determining the default system state for that NixOS release


  NOTE:
  It is perfectly OK and recommended to leave it unchanged
  But if it has to be changed, read about it in the man page for `configuration.nix` beforehand
  */
  system.stateVersion = "23.11";
}
