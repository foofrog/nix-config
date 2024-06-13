{
  config,
  pkgs,
  ...
}: {
  # Load Nvidia driver (works for both X and Wayland)
  services.xserver.videoDrivers = ["nvidia"];

  boot = {
    kernelModules = ["nvidia" "nvidia_modeset" "nvidia_uvm" "nvidia_drm" "i2c-nvidia_gpu"];
    blacklistedKernelModules = ["nouveau"];
  };

  hardware.nvidia = {
    package = config.boot.kernelPackages.nvidiaPackages.latest;
    modesetting.enable = true;

    powerManagement = {
      # Currently experimental
      enable = false;
      finegrained = false;
    };

    nvidiaSettings = true; # For `nvidia-settings` command
    open = false;
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

  hardware.opengl.extraPackages = with pkgs; [
    vaapiVdpau
    nvidia-vaapi-driver
  ];
}
