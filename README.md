# My nix-style user home configuration

That config set is based on [home-manager](https://github.com/rycee/home-manager).

## Overrides feature

Local machines override could be implemented in file `overrides.nix` like
below:

```nix
orig: pkgs:

with orig; {
  home = home // {
    packages = home.packages ++ (with pkgs; [
      androidsdk
      android-studio
      texlive.combined.scheme-full
      ...
    ]);
  };
}
```

## TODO:

- [ ] Move xmonad configuration under nix-expression (expression to move all
  content of xmonad subdirecotry to derivation output)

- [ ] Move xmobar configuration under nix-expression

- [ ] Add and configure taffybar (when version 1+ would be at least in
  nixos-unstable channel)

- [ ] Use colors from colors module
