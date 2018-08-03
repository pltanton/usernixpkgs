pkgs: pkgsMaster:

(with pkgs; [
  kbdd
  haskellPackages.xmobar
  clipit

  kitty

  gnome3.adwaita-icon-theme
  hicolor-icon-theme

  arandr
  maim
  pavucontrol
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

  networkmanagerapplet

  tdesktop
  wget
  htop
  unzip
  p7zip

  nfs-utils

  nixops
  #nix-deploy

  google-play-music-desktop-player 
  evince
  gnome3.eog

  nodePackages.peerflix

  qutebrowser
  qt5.qtmultimedia

  gthumb
  mpv

  inetutils

  xsane
  system-config-printer

  jdk
  cmake
  gnumake
  ctags
  llvmPackages.clang

  (python3.withPackages (pp: with pp; [ jedi flake8 grpcio]))
  gdb

  pass
  passff-host
  rofi-pass

  ansible
  chromium

  xfce.tumbler
  xfce.thunar
  ffmpegthumbnailer
  light
  pamixer
  pavucontrol
]) ++ (with pkgsMaster; [
])

