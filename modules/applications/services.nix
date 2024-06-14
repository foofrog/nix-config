_: {
  services = {
    # Auto mount USB removable devices
    # INFO: https://nixos.wiki/wiki/PCManFM#USB_Automounting
    udisks2.enable = true;
    devmon.enable = true;

    # NOTE: Necessary for GnuPG to work correctly
    pcscd.enable = true;
  };
}
