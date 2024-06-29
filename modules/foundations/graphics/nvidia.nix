{
  config,
  pkgs,
  ...
}: {
  # Load Nvidia driver for Xorg and Wayland
  services.xserver.videoDrivers = ["nvidia"];

  boot = {
    kernelModules = ["nvidia" "nvidia_modeset" "nvidia_uvm" "nvidia_drm" "i2c-nvidia_gpu"];
    blacklistedKernelModules = ["nouveau"];
  };

  hardware.nvidia = {
    package = config.boot.kernelPackages.nvidiaPackages.beta;

    modesetting.enable = true; # Required

    powerManagement = {
      /*
      NOTE:
      Experimental and can cause sleep/suspend to fail

      Enable this if you have graphical corruption issues or application crashes after waking up from sleep
      This fixes it by saving the entire VRAM memory to `/tmp/` instead of just the bare essentials
      */
      enable = false;

      # NOTE: Experimental and only works on modern Nvidia GPUs (Turing or newer)
      finegrained = false; # Turns off GPU when not in use
    };

    # Enable the Nvidia settings menu
    nvidiaSettings = true; # Accessible via `nvidia-settings` command
    open = true;
    nvidiaPersistenced = true;

    # Enable NVIDIA Optimus (Offload)
    prime = {
      offload = {
        enable = true;
        enableOffloadCmd = true;
      };

      amdgpuBusId = "PCI:5:0:0"; # Integrated
      nvidiaBusId = "PCI:1:0:0"; # Dedicated
    };
  };

  environment.sessionVariables = {
    LIBVA_DRIVER_NAME = "nvidia";
    VDPAU_DRIVER = "va_gl";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
  };

  hardware.graphics.extraPackages = with pkgs; [
    vaapiVdpau
    nvidia-vaapi-driver
  ];
}
