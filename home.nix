{ pkgs, ... }:

let
  config = {
    home.packages = import ./commonPackages.nix pkgs;
    programs = {
      git = {
        enable = true;
        userName = "Anton Plotnikov";
        userEmail = "plotnikovanton@gmail.com";
      };

      neovim = {
        enable = true;
        configure = import ./vim/vim.nix;
      };

      rofi = {
        enable = true;
      };

      zsh = {
        enable = true;
        oh-my-zsh = {
          enable = true;
          theme = "robbyrussell";
          plugins = [ "zsh-syntax-highlighting" "git" "common-aliaces" "sudo"
                      "systemd" "wd" "cp" "history-substring-search" ];
        };

        sessionVariables = {
          EDITOR = "nvim";
          JAVA_HOME = "${pkgs.jdk}";
        };
      };

      termite = { enable = true; } // (import ./termite.nix);

      firefox = {
        enable = true;
        enableIcedTea = true;
      };

      home-manager = {
        enable = true;
        path = https://github.com/rycee/home-manager/archive/master.tar.gz;
      };
    };

    services = {
      screen-locker = {
        enable = true;
        lockCmd = "${pkgs.i3lock-pixeled}/bin/i3lock-pixeled";
        inactiveInterval = 5;
      };

      gpg-agent = {
        enable = true;
        defaultCacheTtl = 1800;
      };

      dunst = {
        enable = true;
        settings = import ./dunst.nix;
      };

      syncthing.enable = true;
      stalonetray = {
        enable = true;
        config = import ./stalonetray.nix;
      };
    };

    xsession = {
      enable = true;
      windowManager.xmonad = {
        enable = true;
        enableContribAndExtras = true;
        extraPackages = haskellPackages: [
          haskellPackages.taffybar
        ];
      };
      initExtra = ''
        kbdd &
        autorandr -c &
        xbanish &
        '';
    };

    home.keyboard = {
      layout = "us,ru";
      variant = "dvp,diktor";
    };
    nixpkgs.config.allowUnfree = true;
  };

  overridesPath = ./overrides.nix;
in
  if builtins.pathExists overridesPath
  then config // import overridesPath config pkgs
  else config
