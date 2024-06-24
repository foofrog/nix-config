_: {
  programs.helix = {
    enable = true;

    # Set `hx` command as the default editor using the `EDITOR` environment variable
    defaultEditor = true;

    settings = {
      theme = "base16_transparent";

      editor = {
        line-number = "relative";
        mouse = false;

        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };

        soft-wrap = {
          enable = true;

          wrap-at-text-width = true;
        };

        file-picker.hidden = false;
      };
    };
  };
}
