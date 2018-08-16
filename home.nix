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
      file = import ./modules/files.nix pkgs;

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
        "*.foreground"  = colors.base5;
        "*.background"  = colors.base0;
        "*.cursorColor" = colors.base5;

        "*.color0"      = colors.base0;
        "*.color1"      = colors.base8;
        "*.color2"      = colors.base11;
        "*.color3"      = colors.base10;
        "*.color4"      = colors.base13;
        "*.color5"      = colors.base14;
        "*.color6"      = colors.base12;
        "*.color7"      = colors.base5;

        "*.color8"      = colors.base3;
        "*.color9"      = colors.base8;
        "*.color10"     = colors.base11;
        "*.color11"     = colors.base10;
        "*.color12"     = colors.base13;
        "*.color13"     = colors.base14;
        "*.color14"     = colors.base12;
        "*.color15"     = colors.base7;
        "
        *.color16"      = colors.base9;
        "*.color17"     = colors.base15;
        "*.color18"     = colors.base1;
        "*.color19"     = colors.base2;
        "*.color20"     = colors.base4;
        "*.color21"     = colors.base6;
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
