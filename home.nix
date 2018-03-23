{ pkgs, ... }:

{
  home.packages = with pkgs; [
    autorandr
    kbdd
    libnotify
    dunst
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
    eog
    qutebrowser
    feh

    tdesktop

    termite
    tmux
    wget

    lxappearance-gtk3

    htop
    arc-icon-theme
    arc-theme
    atom
    compton

    nodePackages.peerflix
    discord

    gcc
    jetbrains.idea-community
    pypi2nix
    haskellPackages.hlint
    (python3.withPackages(ps: with ps; [ virtualenv lldb jedi ]))

    haskellPackages.xmobar
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
  };
}
