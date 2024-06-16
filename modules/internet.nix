_: {
  networking = {
    useDHCP = false;
    # TODO: Implement functionality for generating hostname automatically based on the current host
    hostName = "foobar";

    networkmanager = {
      enable = true;
      # Enable wireless support via `wpa_supplicant`
      # INFO: https://nixos.wiki/wiki/Wpa_supplicant
      # wireless.enable = true;

      # Configure network proxy if necessary
      # networking.proxy.default = "https://user:password@proxy:port/";
      # networking.proxy.noProxy = "127.0.0.1,localhost,internal,domain";
    };

    # Define Public DNS Servers
    nameservers = [
      # Cloudflare
      "1.1.1.1"
      "1.0.0.1"
      # Quad9
      "9.9.9.9"
      "149.112.112.112"
      # Google
      "8.8.8.8"
      "8.8.4.4"
      # AdGuard
      "94.140.14.14"
      "94.140.15.15"
    ];
  };
}
