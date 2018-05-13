pkgs:

with pkgs; [
  kbdd
  lxappearance-gtk3
  gnome3.adwaita-icon-theme
  arc-icon-theme
  arc-theme
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

  haskellPackages.xmobar
  taffybar

  tdesktop
  wget
  htop
  unzip
  p7zip

  nixops
  nix-deploy

  google-play-music-desktop-player 
  nodePackages.peerflix
  evince
  gnome3.eog
  qutebrowser
  gthumb
  mpv

  inetutils

  xsane
  system-config-printer

  haskellPackages.hlint
  haskellPackages.tuple

  atom
  jdk
  flow

  cmake
  ctags
  llvmPackages.clang

  (python3.withPackages (pp: with pp; [ jedi flake8 grpcio]))

  rofi-pass
]

