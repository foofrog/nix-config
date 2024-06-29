{pkgs, ...}: {
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile
  # NOTE: To search, run: `nix search nixpkgs <package>` command
  environment.systemPackages = with pkgs; [
    # TODO: Add a small comment description for each package in the list
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

    brightnessctl

    lm_sensors # for `sensors` command
    ethtool
    pciutils # for `lspci` command
    usbutils # for `lsusb` command
    dmidecode # to read information about hardware from BIOS according to the SMBIOS/DMI standard
    parted
    gparted

    spacedrive
  ];

  # Set the default editor
  environment.variables.EDITOR = "hx"; # is the default command for Helix text editor
}
