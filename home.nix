{ pkgs, ... }:

{
  home.packages = with pkgs; [
    arandr
    google-play-music-desktop-player 
    maim
    autorandr
    kbdd
    libnotify
    pamixer
    pavucontrol
    pass
    xbanish
    xclip
    xdotool
    xkblayout-state
    xorg.xbacklight
    evince
    shared_mime_info
    gnome3.eog
    qutebrowser
    feh
    gthumb
    texlive.combined.scheme-full
    mpv

    tdesktop

    tmux
    wget

    lxappearance-gtk3

    htop
    gnome3.adwaita-icon-theme
    arc-icon-theme
    arc-theme
    atom

    wine
    unzip

    nodePackages.peerflix
    discord

    gcc
    jetbrains.idea-community
    androidsdk
    android-studio
    pypi2nix
    haskellPackages.hlint
    haskellPackages.tuple
    (python3.withPackages(ps: with ps; [ virtualenv lldb jedi ]))

    haskellPackages.xmobar

    openjdk8
  ];

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
        JAVA_HOME = "${pkgs.openjdk8}";
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
    gpg-agent = {
      enable = true;
      defaultCacheTtl = 1800;
    };

    dunst = {
      enable = true;
      settings = import ./dunst.nix;
    };

#    compton.enable = true;
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
}
