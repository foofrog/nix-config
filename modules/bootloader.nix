{lib, ...}: {
  boot.loader.systemd-boot = {
    # Limit the number of generations that show up at boot entries
    configurationLimit = lib.mkDefault 5;

    /*
    WARN:
    Enabling `editor` attribute allows passing `init=/bin/sh` as kernel parameter to gain root access
    Considering the security risk, disabling this is recommended
    */
    editor = false;

    # Set the highest resolution available for boot console
    consoleMode = lib.mkDefault "max";
  };

  # Enable to allow the bootloader to modify EFI variables
  boot.loader.efi.canTouchEfiVariables = true;
}
