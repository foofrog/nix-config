{...}: {
  # HACK: Modularity via explicit importing
  imports = [
    ./filesystems.nix

    ../../modules/environment/packages
    ../../modules/environment/programs
    ../../modules/environment/services

    ../../modules/environment/users/foo

    ../../modules/foundations/bootloader

    ../../modules/foundations/graphics/api
    ../../modules/foundations/graphics/processing-units

    ../../modules/foundations/i18n/fonts
    ../../modules/foundations/i18n/l10n

    ../../modules/foundations/internet

    ../../modules/foundations/kernel

    ../../modules/peripherals/audio
    ../../modules/peripherals/bluetooth
    # ../../modules/peripherals/tablet
  ];

  # Enable flakes for this configuration
  nix.settings.experimental-features = ["nix-command" "flakes"];

  /*
  INFO:
  The value of `stateVersion` is the NixOS release version installed initially for this system
  This is required for determining the default system state for the NixOS release


  NOTE:
  It is perfectly OK and recommended to leave it unchanged
  But if it has to be changed, read about it in the man page for `configuration.nix` beforehand
  */
  system.stateVersion = "23.11";
}
