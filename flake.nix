{

  description = "Foo the Frog's NixOS and Home Manager configurations";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      /*
      Here,
      `inputs.nixpkgs` of home-manager is consistent with `input.nixpkgs` of the flake
      This avoids issues caused by different versions of packages
      */
      inputs.nixpkgs.follows = "nixpkgs"; # The `follows` keyword is used for inheritance
    
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }: {
    nixosConfigurations = {
      foobar = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/foobar/systemwide.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.foo = import ./hosts/foobar/userspace.nix;
          }
        ];
      };
    };
  };

}
