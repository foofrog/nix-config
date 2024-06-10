{ pkgs, ... }:

{

  programs = {
    steam = { 
      enable = true;
      # Start a Steam game in an optimized microcompositor that might fix some issues
      gamescopeSession.enable = true;
    };
    
    gamemode.enable = true; # Temporary optimizations applies to the OS in-game, improving performance 
  };
  
  /*
    Prepend `mangohud` in launch options within Steam client's General settings as `mangohud %command%` 
    to access its capabilities in-game. Same goes for other such programs.
  */
  environment.systemPackages = with pkgs; [
    mangohud
  ];

}
