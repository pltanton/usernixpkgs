pkgs:

with pkgs; [
  kbdd
  lxappearance-gtk3
  gnome3.adwaita-icon-theme
  arc-icon-theme
  arc-theme
  arandr
  maim
  autorandr
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

  haskellPackages.xmobar
  taffybar

  tdesktop
  wget
  htop
  unzip

  google-play-music-desktop-player 
  nodePackages.peerflix
  evince
  gnome3.eog
  qutebrowser
  gthumb
  mpv

  pypi2nix
  haskellPackages.hlint
  haskellPackages.tuple

  atom
  jdk
  (python3.withPackages(ps: with ps; [ virtualenv lldb jedi ]))

  rofi-pass
]

