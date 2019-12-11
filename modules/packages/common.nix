pkgs:

let
  pkgsStable = import <nixos-stable> {};
in (with pkgs; [
  nerdfonts
])
