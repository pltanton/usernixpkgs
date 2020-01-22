pkgs:

let
  pkgsStable = import <nixos-stable> {};
in (with pkgs; [
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

  #pkgsStable.qmk_firmware

  # Fonts
  font-awesome_5
  emojione
  #nerdfonts

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
  jq
  #gopass
  bitwarden-cli
  htop
  inetutils
  killall
  nfs-utils
  #nodePackages.peerflix
  p7zip

  #pass
  (pass.withExtensions (ex: with ex; [ pass-otp ]))
  passff-host

  ranger
  tmux
  unzip
  #vault
  wget
  tree

  # GUI
  transmission-remote-gtk
  keepassxc
  (lowPrio kdenlive)
  #my-rapid-photo-downloader
  rapid-photo-downloader
  evince
  feh
  gnome3.eog
  gthumb
  gimp
  kitty
  mpv
  tdesktop
  vlc
  xsane
  slack
  #steam
  bitwarden

  # Web
  chromium
  qutebrowser

  # Dev
  nodejs
  adoptopenjdk-bin
  jetbrains.idea-community
  (lowPrio adoptopenjdk-hotspot-bin-8)
  go
  (python3.withPackages (pp: with pp; [
    python-language-server
    pylint
    jedi
    flake8
    autopep8
    grpcio
    pygments
    hvac
  ]))
])
