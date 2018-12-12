pkgs:

{
  git = {
    enable = true;
    userName = "Anton Plotnikov";
    userEmail = "plotnikovanton@gmail.com";
  };

  neovim = {
    enable = true;
    configure = import ../configs/vim/vim.nix;
  };

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
      NIX_BUILD_SHELL = "zsh";
    };

    profileExtra = ''
      . /Users/pltanton/.nix-profile/etc/profile.d/nix.sh
      . /Users/pltanton/.nix-profile/etc/profile.d/hm-session-vars.sh
    '';
  };

  home-manager = {
    enable = true;
    path = https://github.com/rycee/home-manager/archive/master.tar.gz;
    #path = "/home/anton/workdir/home-manager";
  };
}

