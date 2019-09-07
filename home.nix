{ pkgs, ... }:

let
  #masterTar = builtins.fetchTarball https://github.com/NixOS/nixpkgs/archive/master.tar.gz;
  #pkgsMaster = import masterTar {};
  pkgsStable = import <nixos-stable> {};
  colors = import ./modules/colors.nix;

  config = {
    programs = import ./modules/programs.nix pkgs;
    services = import ./modules/services.nix pkgs pkgsStable;

    fonts.fontconfig.enable = true;

    home = {
      packages = import ./modules/commonPackages.nix pkgs pkgsStable;
      file = import ./modules/files.nix pkgs colors;

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
        ${pkgs.keepassxc}/bin/keepassxc &
        '';
    };

    nixpkgs.config.allowUnfree = true;
  };

  overridesPath = ./overrides.nix;
in
  if builtins.pathExists overridesPath
  then config // (import overridesPath config pkgs)
  else config
