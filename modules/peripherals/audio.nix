{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    pulseaudio # provides `pactl`, which is required by some apps (e.g. sonic-pi)
  ];
  
  /*
  PipeWire is a new low-level multimedia framework
  It aims to offer capture and playback for both audio and video with minimal latency
  It has support for PulseAudio-, JACK-, ALSA- and GStreamer-based applications
  PipeWire has a great bluetooth support, it can be a good alternative to PulseAudio
  Ref: https://nixos.wiki/wiki/PipeWire
  */
  services.pipewire = {
    enable = true;
    wireplumber.enable = true;

    pulse.enable = true;
    
    # Enable support for JACK applications  
    # jack.enable = true;
    
    alsa.enable = true;
    alsa.support32Bit = true;
  };
  
  # `rtkit` is optional but recommended
  security.rtkit.enable = true;
  # Remove `sound.enable` or turn it off if it was set previously as it may conflict with `pipewire`
  sound.enable = false;
  # Disable `pulseaudio` as it can conflict with `pipewire`
  hardware.pulseaudio.enable = false;

}
