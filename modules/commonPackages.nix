pkgs: pkgsMaster:

(with pkgs; [
  ###################
  # Packages for DE #
  ###################
  # xdotool
  arandr
  clipit
  ffmpegthumbnailer
  haskellPackages.xmobar
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
  xbanish
  xclip
  xfce.thunar
  xfce.tumbler
  xkblayout-state
  xorg.xbacklight


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
  htop
  inetutils
  nfs-utils
  nodePackages.peerflix
  p7zip
  pass
  passff-host
  tmux
  unzip
  wget

  # GUI
  evince
  feh
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
])

