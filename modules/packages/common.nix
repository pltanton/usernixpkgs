pkgs:

let
  pkgsStable = import <nixos-stable> {};
in (with pkgs; [
  hack-font
  liberation_ttf
])
