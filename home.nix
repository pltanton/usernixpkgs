{ pkgs, ... }:

let
  colors = import ./modules/colors.nix;
  homeEnv = import ./env.nix pkgs;
in {
  programs = import ./modules/programs/common.nix pkgs // homeEnv.programs;
  services = homeEnv.services;

  fonts.fontconfig.enable = true;

  home = {
    packages = import ./modules/packages/common.nix pkgs ++ homeEnv.packages;
    file = import ./modules/files/common.nix pkgs colors // homeEnv.files colors;
  };
  nixpkgs.config.allowUnfree = true;
} // homeEnv.extraHome
