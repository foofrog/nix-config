_: {
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;

    # Enable the Hands-free Profile (HFP) daemon
    hsphfpd.enable = false; # is not explictly required if PulseAudio is enabled
  };

  # Enable `blueman` for a full featured bluetooth manager including a GUI
  services.blueman.enable = true;
}
