pkgs:

{
  compton = { enable = true; } // import ../configs/compton.nix;

  taffybar.enable = false;
  status-notifier-watcher.enable = false;
  network-manager-applet.enable = false;

  udiskie.enable = true;


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
}

