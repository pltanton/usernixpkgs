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

  neovim = {
    enable = true;
    configure = import ../configs/vim/vim.nix;
  };

  rofi = { enable = true; } // import ../configs/rofi.nix;

  zsh = {
    enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [ "zsh-syntax-highlighting" "git" "common-aliaces" "sudo"
                  "systemd" "wd" "cp" "history-substring-search" "nix-shell" ];
    };

    sessionVariables = {
      SDL_GAMECONTROLLERCONFIG="050000005e040000fd02000003090000,Xbox Wireless Controller,platform:Linux,x:b3,a:b0,b:b1,y:b4,start:b11,dpleft:h0.8,dpdown:h0.0,dpdown:h0.4,dpright:h0.0,dpright:h0.2,dpup:h0.0,dpup:h0.1,leftshoulder:b6,lefttrigger:a5,rightshoulder:b7,righttrigger:a4,leftstick:b13,rightstick:b14,leftx:a0,lefty:a1,rightx:a2,righty:a3,";
      EDITOR = "nvim";
      JAVA_HOME = "${pkgs.jdk10}";
      NIX_BUILD_SHELL = "zsh";
    };
  };

  termite = { enable = true; } // (import ../configs/termite.nix);

  firefox = {
    enable = true;
    enableIcedTea = true;
  };

  home-manager = {
    enable = true;
    path = https://github.com/rycee/home-manager/archive/master.tar.gz;
    #path = "/home/anton/workdir/home-manager";
  };
}

