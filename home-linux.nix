pkgs: oldAttrs:

let
  colors = import ./modules/colors.nix;
in {
  home = oldAttrs.home // {
    keyboard = {
      layout = "us,ru";
      variant = "dvorak,";
    };
  };

  gtk = {
    enable = true;
    theme = {
      package = pkgs.adapta-gtk-theme;
      name = "Adapta-Nokto-Eta";
    };
    iconTheme = {
      package = pkgs.paper-icon-theme;
      name = "Paper";
    };
  };

  qt = {
    enable = true;
    platformTheme = "gtk";
  };

  xresources = import ./modules/xresources.nix colors;

  xsession = {
    enable = true;
    preferStatusNotifierItems = true;
    pointerCursor = {
      package = pkgs.paper-icon-theme;
      name = "Paper";
      size = 16;
    };
    windowManager.xmonad = {
      enable = true;
      extraPackages = haskellPackages: with haskellPackages; [
        xmonad-extras
        xmonad-contrib
        taffybar
      ];
    };
    importedVariables = [
      "GDK_PIXBUF_MODULE_FILE"
    ];

    initExtra = ''
      ${pkgs.autorandr}/bin/autorandr -c &
      ${pkgs.xbanish}/bin/xbanish &
      ${pkgs.clipit}/bin/clipit &
      ${pkgs.lightlocker}/bin/light-locker &
      '';
  };
}
