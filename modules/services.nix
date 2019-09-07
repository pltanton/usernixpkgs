pkgs: pkgsStable:

{
  compton = { enable = true; } // import ../configs/compton.nix;

  taffybar = {
    enable = true;
    package = pkgsStable.taffybar;
  };

  status-notifier-watcher.enable = true;

  network-manager-applet.enable = true;
  udiskie.enable = true;
  pasystray.enable = true;

  screen-locker = {
    enable = true;
    lockCmd = "${pkgs.i3lock-pixeled}/bin/i3lock-pixeled";
    inactiveInterval = 15;
  };

  gpg-agent = {
    enable = true;
    defaultCacheTtl = 18000;
  };

  dunst = {
    enable = true;
    settings = import ../configs/dunst.nix;
  };

  syncthing.enable = false;

  stalonetray = {
    enable = false;
    config = import ../configs/stalonetray.nix;
  };

  random-background = {
    enable = true;
    imageDirectory = "%h/.config/nixpkgs/backgrounds";
  };

  nextcloud-client.enable = true;
}

