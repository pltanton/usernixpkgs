pkgs:

with pkgs; [
  kbdd

  lxappearance-gtk3
  gnome3.adwaita-icon-theme
  hicolor-icon-theme
  arc-icon-theme
  arc-theme
  paper-icon-theme

  arandr
  maim
  pavucontrol
  pass
  xbanish
  xclip
  pamixer
  libnotify
  xdotool
  xkblayout-state
  xorg.xbacklight
  shared_mime_info
  feh
  tmux
  dnsutils

  tdesktop
  wget
  htop
  unzip
  p7zip

  nixops
  #nix-deploy

  google-play-music-desktop-player 
  nodePackages.peerflix
  evince
  gnome3.eog

  qutebrowser
  qt5.qtmultimedia

  gthumb
  mpv

  inetutils

  xsane
  system-config-printer

  atom
  jdk
  flow

  cmake
  gnumake
  ctags
  llvmPackages.clang

  (python3.withPackages (pp: with pp; [ jedi flake8 grpcio]))
  gdb

  rofi-pass
  ansible
  chromium

  xfce.tumbler
  xfce.thunar
  ffmpegthumbnailer
  light
  pamixer
  pass
  pavucontrol
]

