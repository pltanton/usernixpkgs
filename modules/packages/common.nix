pkgs:

let
  pkgsStable = import <nixos-stable> {};
in (with pkgs; [
  hack-font
  emacs-all-the-icons-fonts
])
