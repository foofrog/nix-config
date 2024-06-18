{...}: {
  programs = {
    nushell = {
      enable = true;

      shellAliases = {
        # Alias lengthy commands
        ".." = "cd ..";
        "..." = "cd ../..";
        "...." = "cd ../../..";
        "....." = "cd ../../../..";

        "jctl" = "journalctl -p 3 -xb";

        "fuck" = "thefuck $'(history | last 1 | get command | get 0)'";
      };
    };

    starship = {
      enable = true;
      # enableFishIntegration = false;
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
