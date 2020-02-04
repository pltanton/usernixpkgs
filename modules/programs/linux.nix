pkgs:

{
  home-manager = {
    enable = true;
    path = https://github.com/rycee/home-manager/archive/master.tar.gz;
    #path = https://github.com/rycee/home-manager/archive/release-19.03.tar.gz;
    #path = "/home/anton/workdir/home-manager";
  };

  autorandr = {
    enable = true;
    hooks.postswitch = {
      reload-background = "systemctl --user restart random-background";
    };
  };

  git = {
    enable = true;
    userName = "Anton Plotnikov";
    userEmail = "plotnikovanton@gmail.com";
  };

  rofi = { enable = true; } // import ../../configs/rofi.nix;

  firefox = {
    enable = true;
    enableIcedTea = true;
  };

  browserpass = {
    enable = true;
    browsers = [ "firefox" ];
  };
}

