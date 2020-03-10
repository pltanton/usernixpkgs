pkgs:

let
  pkgsStable = import <nixos-stable> {};
in (with pkgs; [
  #nerdfonts
  hack-font
  emacs-all-the-icons-fonts
])
