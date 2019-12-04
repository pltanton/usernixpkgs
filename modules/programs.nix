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
    extraConfig = builtins.readFile ../configs/vim/vimrc;
    enable = true;
    #configure = import ../configs/vim/vim.nix;
    plugins = with (pkgs.vimPlugins // (import ../configs/vim/customPlugins.nix)); [
      Tabular
      vim-surround
      deoplete-nvim
      The_NERD_tree
      ctrlp
      fugitive
      vimtex
      airline
      oceanic-next
      vim-airline-themes
      vim-misc
      vim-trailing-whitespace
      echodoc-vim
      fzfWrapper
      coc-nvim
      vim-devicons
      tagbar
      typescript-vim
      kotlin

      #plantuml-syntax
      coc-go
      vim-addon-nix
      vimtex
      ghcmod neco-ghc vimproc
    ];
  };

  rofi = { enable = true; } // import ../configs/rofi.nix;

  zsh = {
    enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [ "git" "sudo"
                  "systemd" "wd" "cp" "history-substring-search" "nix-shell" ];
    };
    sessionVariables = {
      SDL_GAMECONTROLLERCONFIG="050000005e040000fd02000003090000,Xbox Wireless Controller,platform:Linux,x:b3,a:b0,b:b1,y:b4,start:b11,dpleft:h0.8,dpdown:h0.0,dpdown:h0.4,dpright:h0.0,dpright:h0.2,dpup:h0.0,dpup:h0.1,leftshoulder:b6,lefttrigger:a5,rightshoulder:b7,righttrigger:a4,leftstick:b13,rightstick:b14,leftx:a0,lefty:a1,rightx:a2,righty:a3,";
      EDITOR = "nvim";
      JAVA_HOME = "${pkgs.adoptopenjdk-bin}";
      JAVA_HOME_8 = "${pkgs.adoptopenjdk-hotspot-bin-8}";
      NIX_BUILD_SHELL = "zsh";
    };
  };

  #termite = { enable = true; } // (import ../configs/termite.nix);

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

  home-manager = {
    enable = true;
    path = https://github.com/rycee/home-manager/archive/master.tar.gz;
    #path = https://github.com/rycee/home-manager/archive/release-19.03.tar.gz;
    #path = "/home/anton/workdir/home-manager";
  };
}

