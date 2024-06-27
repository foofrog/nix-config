/*
INFO:
`./flake.lock` file captures dependency versions and locks them
It's important for consistent deployment of Nix across multiple hosts

https://nixos.wiki/wiki/Flakes

NOTE:
Prefer `nix <commmand>` commands rather than `nix-<something>` commmands if flake setup exists
*/
{
  description = "Foo the Frog's Nix flake";

  # Specify dependencies in `inputs` attribute
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # INFO:  Nix flake for "too much bleeding-edge" and unreleased packages
    nyxpkgs.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";

    home-manager = {
      /*
      INFO:
      `inputs.nixpkgs` attribute for Home Manager is consistent with `input.nixpkgs` of this flake
      This avoids issues caused by different versions of packages

      `follows` is a special keyword used for inheritance in Nix expressions
      */
      inputs.nixpkgs.follows = "nixpkgs";
    };

    niri = {
      url = "github:YaLTeR/niri";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    home-manager,
    nyxpkgs,
    ...
  }: {
    nixosConfigurations = {
      foobar = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/foobar/systemwide.nix

          # Deploy default Chaotic-Nyx module
          nyxpkgs.nixosModules.default

          /*
          INFO:
          Including Home Manager as a module automatically deploys it during rebuild
          Thus removing the need to rebuild Home Manager config seperately
          */
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;

              users.foo = import ./hosts/foobar/userspace.nix;
            };
          }
        ];
      };
    };
  };
}
