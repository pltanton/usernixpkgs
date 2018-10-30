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
  pavucontrol
  shared_mime_info
  xclip
  xdotool
  xkblayout-state

  gnome3.gnome-tweak-tool
  adapta-gtk-theme
  chrome-gnome-shell
  paper-icon-theme

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
  slack
  tdesktop
  vlc

  # Web
  chromium

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

