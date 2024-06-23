{config, ...}: {
  xdg.userDirs = {
    enable = true;

    createDirectories = true;

    desktop = "${config.home.homeDirectory}/dt";
    documents = "${config.home.homeDirectory}/dox";
    download = "${config.home.homeDirectory}/dl";

    templates = "${config.home.homeDirectory}/tpl";
    publicShare = "${config.home.homeDirectory}/pub";

    pictures = "${config.home.homeDirectory}/mm/pix";
    music = "${config.home.homeDirectory}/mm/mu"; # https://t.ly/p6G22 ♪└|∵|┐♪
    videos = "${config.home.homeDirectory}/mm/av";
  };
}
