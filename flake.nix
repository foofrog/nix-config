/*
INFO:
`flake.lock` file in the current directory captures the version of dependencies and locks them
This is important for reproducibility in deploying Nix installations throughout multiple hosts

To learn about flakes and flake schema, refer to https://nixos.wiki/wiki/Flakes

NOTE:
Prefer `nix <commmand>` command rather than `nix-<something>` commmands if flake setup exists
*/
{
  description = "Foo the Frog's NixOS and Home Manager configuration flake";

  # Specify dependencies in `inputs` attribute
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

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
      url = github:YaLTeR/niri;
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {
    nixpkgs,
    home-manager,
    ...
  }: {
    nixosConfigurations = {
      foobar = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/foobar/systemwide.nix
          
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
