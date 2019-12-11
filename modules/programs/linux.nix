pkgs:

{
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

  vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
          ms-vscode.cpptools
          bbenoist.Nix
          vscodevim.vim
    ];
  };

  firefox = {
    enable = true;
    enableIcedTea = true;
  };

  browserpass = {
    enable = true;
    browsers = [ "firefox" ];
  };
}

