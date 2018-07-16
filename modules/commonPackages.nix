pkgs:

with pkgs; [
  kbdd
  haskellPackages.xmobar
  # haskellPackages.gtk-sni-tray
  taffybar
  clipit

  gnome3.adwaita-icon-theme
  hicolor-icon-theme

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

  networkmanagerapplet
  pasystray

  tdesktop
  wget
  htop
  unzip
  p7zip

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

