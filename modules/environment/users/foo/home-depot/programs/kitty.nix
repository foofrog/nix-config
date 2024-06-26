_: {
  programs.kitty = {
    enable = true;

    font = {
      name = "0xProto Nerd Font";
      size = 12; # in pts
    };

    theme = "Cyberpunk Neon";

    settings = {
      enable_audio_bell = false;

      disable_ligatures = "never";
    };

    extraConfig = ''
      include current-theme.conf
    '';
  };
}
