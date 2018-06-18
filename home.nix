{ pkgs, ... }:

let
  pkgs-unstable = import <nixos-unstable> {};

  config = {
    programs = import ./modules/programs.nix pkgs;
    services = import ./modules/services.nix pkgs;

    home = {
      packages = import ./modules/commonPackages.nix pkgs;

      keyboard = {
        layout = "us,ru";
        variant = "dvp,diktor";
      };
    };

    qt = {
      enable = true;
      useGtkTheme = true;
    };

    xsession = {
      enable = true;
      windowManager.xmonad = {
        enable = true;
        enableContribAndExtras = true;
        extraPackages = haskellPackages: with haskellPackages; [
          taffybar
        ];
      };
      initExtra = ''
        kbdd &
        autorandr -c &
        xbanish &
        '';
    };

    nixpkgs.config.allowUnfree = true;
  };

  overridesPath = ./overrides.nix;
in
  if builtins.pathExists overridesPath
  then config // (import overridesPath config pkgs)
  else config
