pkgs:

let
  pkgsStable = import <nixos-stable> {};
  taffybar = import ../../vendor/taffybar/default.nix;
in {
  syncthing = { enable = false; };

  picom = { enable = true; } // import ../../configs/compton.nix;

  taffybar = {
    enable = true;
    package = taffybar;
  };

  emacs.enable = true;

  status-notifier-watcher.enable = true;

  network-manager-applet.enable = true;
  udiskie.enable = true;
  pasystray.enable = true;
  parcellite.enable = true;
  blueman-applet.enable = true;
  unclutter.enable = true;

  gnome-keyring = { enable = true; };

  screen-locker = {
    enable = true;
    lockCmd = "${pkgs.lightlocker}/bin/light-locker-command -l";
    inactiveInterval = 15;
  };

  gpg-agent = {
    enable = true;
    defaultCacheTtl = 18000;
  };

  dunst = {
    enable = true;
    settings = import ../../configs/dunst.nix;
  };

  stalonetray = {
    enable = false;
    config = import ../../configs/stalonetray.nix;
  };

  random-background = {
    enable = true;
    imageDirectory = "%h/.config/nixpkgs/backgrounds";
  };

  nextcloud-client.enable = true;

  mpd = { enable = true; };
}
