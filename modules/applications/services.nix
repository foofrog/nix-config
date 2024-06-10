{ ... }: 

{

  services = {
    # Auto mount USB removable devices
    # Ref: https://nixos.wiki/wiki/PCManFM#USB_Automounting
    udisks2.enable = true;
    devmon.enable = true;

    # Necessary for GnuPG to work correctly
    pcscd.enable = true;
  }

}
