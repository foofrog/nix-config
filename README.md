# UNDER CONSTRUCTION!

This repository contains my configuration for NixOS system set up with Home Manager and Flakes, but as of now, it is unfortunately incomplete. Another thing to note is that **this is NOT the configuration I'm currently using**. My personal configuration has a different directory structure and a chaotic organization while configured a bit differently than this one. Thus, it has NOT been tested yet and might contain errors. I plan to swap this with my local setup, once this configuration's looking fairly good.

Feel free to use it as reference (at your own risk) or additionally for testing. Consider making an issue if you find anything out of place or submit a pull request for fixes/improvements. Thanks.

## Directory structure (at a glance)

```
.
├── flake.nix
├── hosts
│   └── foobar
│       ├── filesystems.nix
│       ├── systemwide.nix
│       └── userspace.nix
└── modules
    ├── applications
    │   ├── extra
    │   │   └── steam.nix
    │   ├── packages.nix
    │   ├── programs.nix
    │   └── services.nix
    ├── bootloader.nix
    ├── fonts.nix
    ├── graphics
    │   ├── amd.nix
    │   └── nvidia.nix
    ├── internet.nix
    ├── localization.nix
    ├── peripherals
    │   ├── audio.nix
    │   ├── bluetooth.nix
    │   └── tablet.nix
    ├── power-management.nix
    └── users
        ├── foo
        │   ├── home-depot
        │   │   ├── packages.nix
        │   │   └── programs.nix
        │   └── user.nix
        └── root.nix
```

There are no `default.nix` files or `imports.nix` for imports, rather all OS and Home Manager modules are imported within `/hosts/foobar/systemwide.nix` and `/hosts/foobar/userspace.nix` respectively. These two files are intended (albeit not implemented yet, but ideally) to be used as module switches or toggles if you will, for my modules at `/modules`. `/modules/users/foo/home-depot/` directory serves as the deposit for the user's home configurations, handled by Home Manager.

### Lastly,

I thank [TanvirOnGH](https://github.com/TanvirOnGH) for the invaluable guidance that helped me make the jump from Arch (btw) to NixOS.
I'm glad I made the switch despite my initial hesitation. Nix and NixOS does have a bit of a learning curve as it does lots of things differently than traditional distros. However, let's face it, being ignorant to a better way of doing things is stupid and makes progress slow and difficult in the long term. One must break the comfort barrier to learn and improve, and embrace the incoming hits of changes that comes (free of charge) with the future.

[Tanvir's own repository](https://github.com/TanvirOnGH/nix-config) for NixOS setup has been immensely helpful in creating mine. Furthermore, [Krey's `nix-config`](https://github.com/Kreyren/nix-config), [Fufezan](https://github.com/fufexan/nix-config) and [Ryan Yin's](https://github.com/ryan4yin/nix-config) repositories were indispensable as learning sources and reference.

A great resource is the unofficial [NixOS and Flakes Book](https://nixos-and-flakes.thiscute.world/introduction/).

*Frog enters Nix realm*
