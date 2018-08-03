{ pkgs, ... }:

let
  masterTar = builtins.fetchTarball https://github.com/NixOS/nixpkgs/archive/master.tar.gz;
  pkgsMaster = import masterTar {};

  config = {
    programs = import ./modules/programs.nix pkgs;
    services = import ./modules/services.nix pkgs;

    home = {
      packages = import ./modules/commonPackages.nix pkgs pkgsMaster;

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

        ln -sf ${pkgsMaster.passff-host}/share/passff-host/passff.json $HOME/.mozilla/native-messaging-hosts/
        '';
    };

    nixpkgs.config.allowUnfree = true;
  };

  overridesPath = ./overrides.nix;
in
  if builtins.pathExists overridesPath
  then config // (import overridesPath config pkgs pkgsMaster)
  else config
