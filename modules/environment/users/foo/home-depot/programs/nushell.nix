_: {
  programs = {
    nushell = {
      enable = true;

      shellAliases = {
        # Alias lengthy commands
        ".." = "cd ..";
        "..." = "cd ../..";
        "...." = "cd ../../..";
        "....." = "cd ../../../..";

        "fuck" = "thefuck $'(history | last 1 | get command | get 0)'";
        "jctl" = "journalctl -p 3 -xb";
        "pls" = "sudo";

        # Alias with better alternatives
        "cat" = "bat --style header --style snip --style changes --style header";
      };

      # environmentVariables = {
      #   EDITOR = "hx"; # NOTE: Not necessary as it is already set in `./helix.nix` file
      # };

      extraEnv = ''
        # Disable Nushell welcome message
        $env.config = {
          show_banner: false,
        }
      '';
    };

    starship = {
      enable = true;

      enableNushellIntegration = true;
    };

    # carapace = {
    #   enable = true;

    #   enableNushellIntegration = true;
    # };

    thefuck = {
      enable = true;

      enableNushellIntegration = true;
    };

    atuin = {
      enable = true;

      enableNushellIntegration = true;
    };
  };

  services.gpg-agent.enableNushellIntegration = true;
}
