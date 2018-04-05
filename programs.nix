pkgs:

{
  git = {
    enable = true;
    userName = "Anton Plotnikov";
    userEmail = "plotnikovanton@gmail.com";
  };

  neovim = {
    enable = true;
    configure = import ./vim/vim.nix;
  };

  rofi = { enable = true; } // import ./configs/rofi.nix;

  zsh = {
    enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [ "zsh-syntax-highlighting" "git" "common-aliaces" "sudo"
                  "systemd" "wd" "cp" "history-substring-search" ];
    };

    sessionVariables = {
      EDITOR = "nvim";
      JAVA_HOME = "${pkgs.jdk}";
    };
  };

  termite = { enable = true; } // (import ./configs/termite.nix);

  firefox = {
    enable = true;
    enableIcedTea = true;
  };

  home-manager = {
    enable = true;
    path = https://github.com/rycee/home-manager/archive/master.tar.gz;
  };
}

