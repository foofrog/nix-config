{ pkgs, ... }:

{

  users.users.root = {
    home = /root;
    /*
    "System Operators love to use `GOD`, it's a whole male ego thing."
      - Cereal Killer, Hackers (1995)
    */
    initialPassword = "GOD"; # to change this, use `passwd` command
    shell = pkgs.fish;
  };

}
