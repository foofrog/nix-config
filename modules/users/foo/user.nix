{pkgs, ...}: {
  /*
  NOTE: Removing a user does not remove their profile
  INFO: https://github.com/NixOS/nix/issues/4419
  */
  users.users.foo = {
    description = "User named foo";
    home = "/home/foo";
    isNormalUser = true;
    /*
    "System Operators love to use `GOD`, it's a whole male ego thing."
      - Cereal Killer, Hackers (1995)
    */
    initialPassword = "GOD"; # to change this, use `passwd` command
    shell = pkgs.fish;
    uid = 1000;

    # Set the groups this user will be associated with
    extraGroups = [
      /*
      NOTE:
      To see available group(s) use `cut -d: -f1 /etc/group` command
      To see member(s) of a particular group, use `getent group <group>` commmand
      */
      "wheel"
      "disk"
      "audio"
      "video"
      "input"
      "networkmanager"
      "kvm"
    ];
  };

  # users.extraGroups = {
  #   vboxusers.members = ["foo"];
  #   docker.members = ["foo"];
  # };

  users = {
    motd = "Don't Panic.";
  };

  environment.shells = [pkgs.fish];
}
