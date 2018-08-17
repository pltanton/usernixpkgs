pkgs: colors:

{
  ".config/kitty/kitty.conf".text = import ../configs/files/kitty.nix colors;
  ".config/polybar/config".text = pkgs.lib.generators.toINI {} (import ../configs/files/polybar.nix colors);
}
