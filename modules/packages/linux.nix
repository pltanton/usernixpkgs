pkgs:

let
  gradle2nix = import (fetchTarball
    "https://github.com/tadfisher/gradle2nix/archive/master.tar.gz") { };
  pkgsStable = import <nixos-stable> { };
in (with pkgs; [
  ###################
  # Packages for DE #
  ###################
  arandr
  clipit
  ffmpegthumbnailer
  kbdd
  libnotify
  light
  maim
  networkmanagerapplet
  pamixer
  paprefs
  pavucontrol
  shared_mime_info
  siji
  xbanish
  xclip
  xdotool
  pantheon.elementary-files
  ark
  xkblayout-state
  xorg.xbacklight
  myxkbutil
  xxkb
  xorg.xkill
  glib

  haskellPackages.greenclip

  # Fonts
  font-awesome_5
  emojione
  iosevka-bin
  #nerdfonts

  #################
  # Look and feel #
  #################
  gnome3.adwaita-icon-theme

  #############
  # User apps #
  #############
  # CLI utils
  fzf
  ansible
  dnsutils
  jq
  #gopass
  bitwarden-cli
  mpc_cli
  ncmpcpp
  htop
  inetutils
  killall
  nfs-utils
  #nodePackages.peerflix
  ispell

  #pass
  (pass.withExtensions (ex: with ex; [ pass-otp ]))
  passff-host

  ranger
  tmux
  unzip
  #vault
  wget
  tree

  # GUI
  syncplay
  sublime-music
  clementine
  xournalpp
  discord
  zoom-us
  transmission-remote-gtk
  transmission-gtk
  (lowPrio kdenlive)
  rapid-photo-downloader
  evince
  gnome3.eog
  gthumb
  gimp
  kitty
  mpv
  tdesktop
  vlc
  xsane
  slack
  #steam
  bitwarden
  bitwarden-rofi
  sidequest
  scrcpy
  darktable
  caffeine-ng
  tigervnc

  # Web
  chromium
  qutebrowser

  # LaTeX
  (texlive.combine {
    inherit (texlive) scheme-medium titlesec;
  })

  # Dev
  clang-tools
  gradle2nix
  morph
  nodejs
  insomnia
  postman
  adoptopenjdk-bin
  jetbrains.idea-community
  jetbrains.idea-ultimate
  dbeaver
  go
  gopls
  protobuf
  grpc
  (python3.withPackages (pp:
    with pp; [
      python-language-server
      pylint
      jedi
      flake8
      autopep8
      grpcio
      pygments
      hvac
    ]))
  nodePackages.yaml-language-server
  nodePackages.prettier
  nodePackages.vue-language-server
  nodePackages.eslint
])
