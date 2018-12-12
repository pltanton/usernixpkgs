{ pkgs, ... }:

let
  masterTar = builtins.fetchTarball https://github.com/NixOS/nixpkgs/archive/master.tar.gz;
  pkgsMaster = import masterTar {};
  colors = import ./modules/colors.nix;

  config = {
    programs = import ./modules/programs.nix pkgs;
    services = import ./modules/services.nix pkgs;

    home = {
      packages = import ./modules/commonPackages.nix pkgs pkgsMaster;
      file = import ./modules/files.nix pkgs colors;
    };

    xresources = import ./modules/xresources.nix colors;

    nixpkgs.config.allowUnfree = true;
  };

  overridesPath = ./overrides.nix;
in
  if builtins.pathExists overridesPath
  then config // (import overridesPath config pkgs pkgsMaster)
  else config
