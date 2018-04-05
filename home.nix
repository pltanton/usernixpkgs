{ pkgs, ... }:

let
  config = {
    home.packages = import ./commonPackages.nix pkgs;

    programs = import ./programs.nix pkgs;
    services = import ./services.nix pkgs;

    xsession = {
      enable = true;
      windowManager.xmonad = {
        enable = true;
        enableContribAndExtras = true;
        extraPackages = haskellPackages: [
          haskellPackages.taffybar
        ];
      };
      initExtra = ''
        kbdd &
        autorandr -c &
        xbanish &
        '';
    };

    home.keyboard = {
      layout = "us,ru";
      variant = "dvp,diktor";
    };
    nixpkgs.config.allowUnfree = true;
  };

  overridesPath = ./overrides.nix;
in
  if builtins.pathExists overridesPath
  then config // import overridesPath config pkgs
  else config
