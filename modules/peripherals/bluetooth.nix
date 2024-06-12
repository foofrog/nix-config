_:

{

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = false;
    
    # Enable the Hands-free Profile (HFP) daemon
    hsphfpd.enable = false; # is not explictly required if PulseAudio is enabled 
  };

  # Enable `blueman` a full featured bluetooth manager and with GUI using the `blueman-manager` command
  services.blueman.enable = true;

}
