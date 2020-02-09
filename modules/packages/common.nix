pkgs:

let
  pkgsStable = import <nixos-stable> {};
in (with pkgs; [
  nerdfonts
  emacs-all-the-icons-fonts
])
