pkgs: colors:

let
  emacsConfig = builtins.toFile "config.org" (import ../../configs/files/emacs.org colors);
in {
  ".config/kitty/kitty.conf".text = import ../../configs/files/kitty.nix colors;

  ".emacs.d/config.org".text = import ../../configs/files/emacs.org colors;
  ".emacs.d/init.el".text = "(org-babel-load-file \"${emacsConfig}\")";
}
