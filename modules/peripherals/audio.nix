{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    pulseaudio # NOTE: The package comes with `pactl`, which is required by some apps (e.g. sonic-pi)
  ];

  /*
  INFO:
  PipeWire is a new low-level multimedia framework
  It aims to offer capture and playback for both audio and video with minimal latency
  It has support for PulseAudio-, JACK-, ALSA- and GStreamer-based applications
  PipeWire has a great bluetooth support, it can be a good alternative to PulseAudio
  
  https://nixos.wiki/wiki/PipeWire
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

  # NOTE: `rtkit` is optional but enabling it is recommended
  security.rtkit.enable = true;
  
  # NOTE: Both of these may conflict with `pipewire` so disabling them is recommended
  sound.enable = false;
  hardware.pulseaudio.enable = false;
}
