pkgs: oldAttrs:

let
  colors = import ./modules/colors.nix;
  pkgsStable = import <nixos-stable> {};
  #taffybar = import ./vendor/taffybar/default.nix;
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
      package = pkgs.qogir-theme;
      name = "Qogir-dark";
    };
    iconTheme = {
      package = pkgs.qogir-icon-theme;
      name = "Qogir-dark";
    };
  };

  qt = {
    enable = true;
    platformTheme = "gtk";
  };

  xresources = import ./modules/xresources.nix colors;

  wayland = {
    windowManager.sway = {
      enable = true;
    };
  };

  xsession = {
    enable = true;
    preferStatusNotifierItems = true;
    pointerCursor = {
      package = pkgs.paper-icon-theme;
      name = "Paper";
      size = 16;
    };
    windowManager.awesome = {
      enable = false;
    };
    windowManager.xmonad = {
      enable = true;
      extraPackages = haskellPackages: with haskellPackages; [
        xmonad-extras
        xmonad-contrib
        haskellPackages.taffybar
      ];
    };
    importedVariables = [
      "GDK_PIXBUF_MODULE_FILE"
      "PATH"
    ];

    initExtra = ''
      ${pkgs.autorandr}/bin/autorandr -c &
      ${pkgs.xbanish}/bin/xbanish &
      ${pkgs.clipit}/bin/clipit &
      ${pkgs.lightlocker}/bin/light-locker &
      ${pkgs.haskellPackages.greenclip}/bin/greenclip daemon &
      '';
  };
}
