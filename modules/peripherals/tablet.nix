{ pkgs, lib, config, ... }: 

{

  options = {
    moduleTablet.enable = lib.mkEnableOption "Enable tablet module";
  };
  config = {
    hardware.opentabletdriver = {
      # Enable driver for Wacom CTL-472
      enable = true;
      daemon.enable = true;
    
      # Supported tablets: https://opentabletdriver.net/Tablets    
      package = pkgs.opentabletdriver; 
    };
  };

}
