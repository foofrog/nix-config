{lib, ...}: {
  boot.loader.systemd-boot = {
    # Limit the number of generations that show up at boot entries
    configurationLimit = lib.mkDefault 5;

    # Enable editing the kernel command-line before boot
    editor = false; # is enabled (by default) unless set to false
    /*
    Here,
    It is recommended to set `editor` to false
    Otherwise it allows to gain root access by passing `init=/bin/sh` as kernel parameter
    */

    # Set the highest resolution for `sytemd-boot`'s console
    consoleMode = lib.mkDefault "max";
  };

  boot.loader.efi.canTouchEfiVariables = true;
}
