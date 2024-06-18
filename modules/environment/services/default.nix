_: {
  services = {
    # Auto mount USB removable devices
    # INFO: https://nixos.wiki/wiki/PCManFM#USB_Automounting
    udisks2.enable = true;
    devmon.enable = true;

    # Set up Power management for the battery-powered
    power-profiles-daemon = {
      enable = true;
    };
    upower.enable = true;

    # INFO: Necessary for GnuPG to work correctly
    pcscd.enable = true;
  };
}
