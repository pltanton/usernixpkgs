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

    gtk = {
      enable = true;
      theme = {
        package = pkgs.arc-theme;
        name = "Arc-Dark";
      };
      iconTheme = {
        package = pkgs.paper-icon-theme;
        name = "Paper";
      };
    };

    qt = {
      enable = true;
      useGtkTheme = true;
    };

    xsession = {
      enable = true;
      pointerCursor = {
        package = pkgs.paper-icon-theme;
        name = "Paper";
        size = 16;
      };
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
        clipit &
        '';
    };

    nixpkgs.config.allowUnfree = true;
  };

  overridesPath = ./overrides.nix;
in
  if builtins.pathExists overridesPath
  then config // (import overridesPath config pkgs)
  else config
