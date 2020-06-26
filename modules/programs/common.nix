pkgs: {
  neovim = import ../../configs/vim/vim.nix pkgs;

  emacs = {
    enable = true;
    package = pkgs.emacs;
    extraPackages = epkgs:
      with epkgs; [
        esup
        use-package

        evil
        evil-org
        evil-leader

        telephone-line
        centaur-tabs
        all-the-icons

        ivy
        counsel
        counsel-projectile
        flx
        ranger
        base16-theme

        projectile
        treemacs
        treemacs-projectile
        treemacs-evil
        treemacs-icons-dired

        org-bullets
        org-plus-contrib
        gnuplot

        diminish

        nix-mode
        yaml-mode

        highlight-parentheses
        beacon

        go-mode

        haskell-mode

        typescript-mode

        prettier-js
        lsp-mode
        flycheck
        lsp-ui
        company-lsp
        lsp-treemacs
        elisp-format

        pdf-tools
        auctex
        auctex-latexmk

        vue-mode

        rainbow-mode
      ];
  };

  taskwarrior = {
    enable = true;
    config = {
      taskd = {
        server = "hz1.kaliwe.ru:53589";
        credentials = "home/anton/4beddf06-a575-485f-beac-0bc6357261dc";
        certificate = "~/.task_kaliwe/anton/public.cert";
        key = "~/.task_kaliwe/anton/private.key";
        ca = "~/.task_kaliwe/ca.cert";
      };
    };
  };

  zsh = {
    enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        "sudo"
        "systemd"
        "wd"
        "cp"
        "history-substring-search"
        "nix-shell"
      ];
    };
    sessionVariables = {
      EDITOR = "nvim";
      JAVA_HOME = "${pkgs.adoptopenjdk-hotspot-bin-11}";
      JAVA_HOME_8 = "${pkgs.adoptopenjdk-hotspot-bin-8}";
      #JAVA_HOME_8_ORACLE = "${pkgs.oraclejdk8}";
      NIX_BUILD_SHELL = "zsh";
      LC_ALL = "en_US.UTF-8";
      PATH = "$HOME/.nix-profile/bin:$PATH";
    };
  };

}
