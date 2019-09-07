pkgs: pkgsStable:

(with pkgs; [
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

  # Fonts
  font-awesome_5
  emojione
  pkgsStable.nerdfonts

  #################
  # Look and feel #
  #################
  gnome3.adwaita-icon-theme
  hicolor-icon-theme


  #############
  # User apps #
  #############
  # CLI utils
  fzf
  ansible
  dnsutils
  gopass
  keepmenu
  htop
  inetutils
  killall
  nfs-utils
  #nodePackages.peerflix
  p7zip
  pass
  passff-host
  ranger
  tmux
  unzip
  #vault
  wget
  tree

  # GUI
  keepassxc
  my-rapid-photo-downloader
  #vscode
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
  slack
  steam

  # Web
  chromium

  # Dev
  nodejs
  gnome2.libgnome
  openjdk11
  arduino
  esptool
  cmake
  gnumake
  ctags
  llvmPackages.clang
  gdb
  nixops
  gotools
  go
  (python3.withPackages (pp: with pp; [
    python-language-server
    pylint
    jedi
    flake8
    autopep8
    grpcio
    pygments
  ]))
])
