{ pkgs, ... }:

let
  masterTar = builtins.fetchTarball https://github.com/NixOS/nixpkgs/archive/master.tar.gz;
  pkgsMaster = import masterTar {};
  colors = import ./modules/colors.nix;

  config = {
    programs = import ./modules/programs.nix pkgs;
    services = import ./modules/services.nix pkgs;


    home = {
      packages = import ./modules/commonPackages.nix pkgs pkgsMaster;
      file = import ./modules/files.nix pkgs colors;

      keyboard = {
        layout = "us,ru";
        variant = "dvp,";
      };
    };

    gtk = {
      enable = true;
      theme = {
        package = pkgs.arc-theme;
        name = "Arc-Dark";
      };
      iconTheme = {
        package = pkgs.paper-icon-theme;
        name = "Paper";
      };
    };

    qt = {
      enable = true;
      useGtkTheme = true;
    };

    xresources = {
      properties = {
        "*.foreground"  = colors.xresourcesMap.foreground;
        "*.background"  = colors.xresourcesMap.background;
        "*.cursorColor" = colors.xresourcesMap.cursorColor;
        "*.color0"      = colors.xresourcesMap.color0;
        "*.color1"      = colors.xresourcesMap.color1;
        "*.color2"      = colors.xresourcesMap.color2;
        "*.color3"      = colors.xresourcesMap.color3;
        "*.color4"      = colors.xresourcesMap.color4;
        "*.color5"      = colors.xresourcesMap.color5;
        "*.color6"      = colors.xresourcesMap.color6;
        "*.color7"      = colors.xresourcesMap.color7;
        "*.color8"      = colors.xresourcesMap.color8;
        "*.color9"      = colors.xresourcesMap.color9;
        "*.color10"     = colors.xresourcesMap.color10;
        "*.color11"     = colors.xresourcesMap.color11;
        "*.color12"     = colors.xresourcesMap.color12;
        "*.color13"     = colors.xresourcesMap.color13;
        "*.color14"     = colors.xresourcesMap.color14;
        "*.color15"     = colors.xresourcesMap.color15;
        "*.color16"     = colors.xresourcesMap.color16;
        "*.color17"     = colors.xresourcesMap.color17;
        "*.color18"     = colors.xresourcesMap.color18;
        "*.color19"     = colors.xresourcesMap.color19;
        "*.color20"     = colors.xresourcesMap.color20;
        "*.color21"     = colors.xresourcesMap.color21;
      };
    };

    xsession = {
      enable = true;
      preferStatusNotifierItems = false;
      pointerCursor = {
        package = pkgs.paper-icon-theme;
        name = "Paper";
        size = 16;
      };
      windowManager.xmonad = {
        enable = true;
        extraPackages = haskellPackages: with haskellPackages; [
          taffybar
          xmonad-extras
          xmonad-contrib
        ];
      };

      profileExtra = ''
        systemctl --user import-environment GDK_PIXBUF_MODULE_FILE
      '';

      initExtra = ''
        autorandr -c &
        xbanish &
        clipit &

        ln -sf ${pkgs.passff-host}/share/passff-host/passff.json $HOME/.mozilla/native-messaging-hosts/
        '';
    };

    nixpkgs.config.allowUnfree = true;
  };

  overridesPath = ./overrides.nix;
in
  if builtins.pathExists overridesPath
  then config // (import overridesPath config pkgs pkgsMaster)
  else config
