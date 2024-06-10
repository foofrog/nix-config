{ lib, ... }:

{
    
  boot.loader.systemd-boot = {
    # Limit the number of generations that show up at boot entries
    configurationLimit = lib.mkDefault 5;
    
    # Set the highest resolution for `sytemd-boot`'s console
    consoleMode = lib.mkDefault "max";
  };
  
  boot.loader.efi.canTouchEfiVariables = true;

}
