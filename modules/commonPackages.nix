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
  killall
  ansible
  dnsutils
  htop
  inetutils
  nfs-utils
  nodePackages.peerflix
  p7zip
  pass
  gopass
  passff-host
  ranger
  tmux
  unzip
  wget

  # GUI
  vlc
  evince
  feh
  polybar
  gnome3.eog
  google-play-music-desktop-player 
  gthumb
  kitty
  mpv
  rofi-pass
  system-config-printer
  tdesktop
  xsane

  # Web
  chromium
  qt5.qtmultimedia
  qutebrowser

  # Dev
  jdk
  cmake
  gnumake
  ctags
  llvmPackages.clang
  gdb
  (python3.withPackages (pp: with pp; [ jedi flake8 grpcio]))

]) ++ (with pkgsMaster; [
  haskellPackages.xmobar
])

