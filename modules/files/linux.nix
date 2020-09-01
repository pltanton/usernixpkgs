pkgs: colors:

{
  ".config/polybar/config".text = pkgs.lib.generators.toINI {} (import ../../configs/files/polybar.nix colors);
  ".latexmkrc".text = import ../../configs/files/latexmkrc.nix;
  ".config/keepmenu/config.ini".text = pkgs.lib.generators.toINI {} (import ../../configs/files/keepmenu.nix pkgs);
  ".config/taffybar/taffybar.css".text = import ../../configs/files/taffybar/taffybar.css colors;
  ".config/awesome/themes/pltanton/colors.lua".text = import ../../configs/files/awesome-theme.nix colors;
  ".jdks/adoptjdk11".source = pkgs.adoptopenjdk-bin;
}
