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
      EDITOR = "nvim";
      JAVA_HOME = "${pkgs.jdk}";
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
    #path = https://github.com/pltanton/home-manager/archive/master.tar.gz;
  };
}

