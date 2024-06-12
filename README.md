<div align="center">
  <img src="hexagons/caped-frogs.png" alt="Caped frogs in hexagon, a parody of the Nix & NixOS logo" widdth="200" height="200">
</div>

# UNDER CONSTRUCTION!

> [!CAUTION]
> This repository contains my configuration for NixOS system set up with Home Manager and Flakes, but as of now, it is unfortunately incomplete. Another thing to note is that **this is NOT the configuration I'm currently using**. My personal configuration has a different directory structure and a chaotic organization while configured a bit differently than this one. Thus, it has NOT been tested yet and might contain errors. I plan to swap this with my local setup, once this configuration's looking fairly good.
>
> Feel free to use it as reference (at your own risk) or additionally for testing. Consider making an issue if you find anything out of place or submit a pull request for fixes/improvements.

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

I thank [TanvirOnGH](https://github.com/TanvirOnGH) for providing invaluable guidance that helped me make the hop from Arch (btw) to NixOS.
Despite initial hesitations, I'm happy I made the switch. Nix and NixOS differs from traditional distributions and thus has a bit of learning curve. However, staying ignorant of better alternatives is stupid and slows down progress in the long run. It's essential to step out the comfort zone, and embrace the coming hits of changes with open arms.

[Tanvir's own repository](https://github.com/TanvirOnGH/nix-config) for NixOS setup has been immensely helpful in creating mine. Furthermore, [Krey's `nix-config`](https://github.com/Kreyren/nixos-config), [Fufezan](https://github.com/fufexan/dotfiles) and [Ryan Yin's](https://github.com/ryan4yin/nix-config) repositories were indispensable as learning sources and reference.

A great resource is the unofficial [NixOS and Flakes Book](https://nixos-and-flakes.thiscute.world/introduction/).
