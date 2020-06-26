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
      reload-dpi = ''
        if [[ $AUTORANDR_CURRENT_PROFILE == *"-hidpi" ]]; then
          echo Xft.dpi: 192 | ${pkgs.xorg.xrdb}/bin/xrdb -merge
        else
          echo Xft.dpi: 96 | ${pkgs.xorg.xrdb}/bin/xrdb -merge
        fi
        systemctl --user restart taffybar
      '';
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
  };

  browserpass = {
    enable = true;
    browsers = [ "firefox" ];
  };
}
