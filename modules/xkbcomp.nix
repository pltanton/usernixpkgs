pkgs:

let
  layoutConfig = pkgs.writeTextFile {
    name = "layout-config";
    text = builtins.readFile ../configs/layout.xkb;
  };
in "${pkgs.xorg.xkbcomp}/bin/xkbcomp -I${pkgs.diktor} ${layoutConfig} $DISPLAY"
