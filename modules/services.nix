pkgs:

{
  compton = { enable = false; } // import ../configs/compton.nix;

  status-notifier-watcher.enable = false;
  taffybar.enable = false;

  network-manager-applet.enable = false;
  udiskie.enable = false;
  pasystray.enable = false;

  screen-locker = {
    enable = false;
    lockCmd = "${pkgs.i3lock-pixeled}/bin/i3lock-pixeled";
    inactiveInterval = 15;
  };

  gpg-agent = {
    enable = true;
    defaultCacheTtl = 18000;
  };

  dunst = {
    enable = false;
    settings = import ../configs/dunst.nix;
  };

  syncthing.enable = false;

  stalonetray = {
    enable = false;
    config = import ../configs/stalonetray.nix;
  };

  random-background = {
    enable = false;
    imageDirectory = "%h/.config/nixpkgs/backgrounds";
  };
}

