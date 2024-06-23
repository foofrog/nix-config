{config, ...}: {
  xdg.userDirs = {
    enable = true;

    createDirectories = true;

    desktop = "${config.home.homeDirectory}/DT";
    documents = "${config.home.homeDirectory}/DOX";
    download = "${config.home.homeDirectory}/DL";

    templates = "${config.home.homeDirectory}/TPL";
    publicShare = "${config.home.homeDirectory}/PUB";

    pictures = "${config.home.homeDirectory}/MM/pictures";
    music = "${config.home.homeDirectory}/MM/music"; # https://t.ly/p6G22 ♪└|∵|┐♪
    videos = "${config.home.homeDirectory}/MM/videos";
  };
}
