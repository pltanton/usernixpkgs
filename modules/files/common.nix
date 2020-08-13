pkgs: colors:

let
  emacsConfig = builtins.toFile "config.org" (import ../../configs/files/emacs.org pkgs colors);
in {
  ".config/kitty/kitty.conf".text = import ../../configs/files/kitty.nix colors;

  ".emacs.d/config.org" = {
    text = import ../../configs/emacs/emacs.org pkgs colors;
    onChange = "rm ~/.emacs.d/config.el";
  };
  ".emacs.d/init.el".text = "(org-babel-load-file \"~/.emacs.d/config.org\")";
}
