{pkgs, ...}: {
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile
  environment.systemPackages = with pkgs; [
    # To search, run: `nix search <package>` command
    #ToDo: Add small descriptions for each packages as comments with basic refactoring
    macchina
    helix

    strace
    ltrace
    bpftrace
    tcpdump
    lsof

    sysstat
    iotop
    iftop
    btop
    nmon
    sysbench

    lm_sensors # for `sensors` command
    ethtool
    pciutils # for `lspci` command
    usbutils # for `lsusb` command
    dmidecode # to read information about hardware from BIOS according to the SMBIOS/DMI standard
    parted
    gparted
  ];

  # Set the default editor
  environment.variables.EDITOR = "hx"; # is the default command for Helix text editor
}
