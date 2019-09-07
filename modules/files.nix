pkgs: colors:

{
  ".config/kitty/kitty.conf".text = import ../configs/files/kitty.nix colors;
  ".config/polybar/config".text = pkgs.lib.generators.toINI {} (import ../configs/files/polybar.nix colors);
  ".latexmkrc".text = import ../configs/files/latexmkrc.nix;
  ".config/keepmenu/config.ini".text = pkgs.lib.generators.toINI {} (import ../configs/files/keepmenu.nix pkgs);
}
