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
        $env.config = {
          show_banner: false, # Disable welcome message
        }
      '';
    };

    starship = {
      enable = true;

      enableNushellIntegration = true;

      settings = {
        sudo.disabled = true;

        character = {
          success_symbol = " [╰─](bold cyan)[λ](bold green)";
          error_symbol = " [╰─](bold cyan)[Χ](bold red)";
        };

        username = {
          format = " [╭─$user]($style)@";
          show_always = true;
          style_root = "bold red";
          style_user = "bold cyan";
        };

        hostname = {
          disabled = false;
          format = "[$hostname]($style) in ";
          ssh_only = false;
          style = "bold blue";
          trim_at = "-";
        };

        directory = {
          style = "purple";
          truncate_to_repo = true;
          truncation_length = 0;
          truncation_symbol = "repo: ";
        };

        git_commit.tag_symbol = " tag ";
        git_status = {
          ahead = ">";
          behind = "<";
          diverged = "<>";
          renamed = "r";
          deleted = "x";
        };

        battery.disabled = true;
      };
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
