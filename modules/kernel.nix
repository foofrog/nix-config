{pkgs, ...}: {
  boot = {
   
    # Fetch the latest kernel! \(^ヮ^)/
    kernelPackages = pkgs.linuxPackages_latest;
    # kernelPackages = pkgs.linuxPackages_xanmod_latest; # INFO: https://xanmod.org/
    
    kernelParams = [
      # "quiet"
      "mitigations=off"
      "iommu=pt"
      # "splash"
    ];
  };
}
