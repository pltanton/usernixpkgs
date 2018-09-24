pkgs: pkgsMaster:

(with pkgs; [
  ###################
  # Packages for DE #
  ###################
  arandr
  clipit
  ffmpegthumbnailer
  font-awesome_4
  font-awesome_5
  kbdd
  libnotify
  light
  maim
  networkmanagerapplet
  pamixer
  pamixer
  pavucontrol
  pavucontrol
  shared_mime_info
  siji
  xbanish
  xclip
  xdotool
  xfce.thunar
  xfce.tumbler
  xkblayout-state
  xorg.xbacklight
  myxkbutil


  #################
  # Look and feel #
  #################
  gnome3.adwaita-icon-theme
  hicolor-icon-theme


  #############
  # User apps #
  #############
  # CLI utils
  ansible
  dnsutils
  gopass
  htop
  inetutils
  killall
  nfs-utils
  nodePackages.peerflix
  p7zip
  pass
  passff-host
  ranger
  tmux
  unzip
  vault
  wget

  # GUI
  evince
  feh
  gnome3.eog
  google-play-music-desktop-player 
  gthumb
  kitty
  mpv
  polybar
  rofi-pass
  system-config-printer
  tdesktop
  vlc
  xsane

  # Web
  chromium
  qt5.qtmultimedia
  qutebrowser

  # Dev
  jdk10
  cmake
  gnumake
  ctags
  llvmPackages.clang
  gdb
  nixops
  (python3.withPackages (pp: with pp; [ jedi flake8 grpcio]))

]) ++ (with pkgsMaster; [
  haskellPackages.xmobar
])

