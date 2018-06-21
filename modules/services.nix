pkgs:

{
  compton = { enable = true; } // import ../configs/compton.nix;

  flameshot = {
    enable = false;
  };

  udiskie = {
    enable = true;
  };

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

  syncthing.enable = true;

  stalonetray = {
    enable = true;
    config = import ../configs/stalonetray.nix;
  };

  random-background = {
    enable = true;
    imageDirectory = "%h/.config/nixpkgs/backgrounds";
  };
}

