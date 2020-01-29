pkgs: colors:

{
  ".config/kitty/kitty.conf".text = import ../../configs/files/kitty.nix colors;

  ".emacs.d/init.el".text = "(org-babel-load-file \"${../../configs/files/emacs.org}\")";
}
