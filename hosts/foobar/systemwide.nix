{ ... }:

{

  imports = [
    ./filesystems.nix
    ../../modules/bootloader.nix
    ../../modules/fonts.nix
    ../../modules/graphics/amd.nix
    ../../modules/graphics/nvidia.nix
    ../../modules/internet.nix
    ../../modules/localization.nix
    ../../modules/peripherals/audio.nix
    ../../modules/peripherals/bluetooth.nix
    ../../modules/power-management.nix
    ../../modules/users/root.nix
  ];

  # Enable flakes for this configuration
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  /*
  Here,
  The value dictates the NixOS release version that was installed initially
  It's important to determine the default system state for that NixOS release
  It's perfectly OK and recommended to leave it unchanged
  
  However,
  If it should be changed, read the man page for `configuration.nix` beforehand
  Ref: https://nixos.org/nixos/options.html
  */
  system.stateVersion = "23.11";

}
