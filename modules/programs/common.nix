pkgs:

{
  neovim = import ../../configs/vim/vim.nix pkgs;

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

  home-manager = {
    enable = true;
    path = https://github.com/rycee/home-manager/archive/master.tar.gz;
    #path = https://github.com/rycee/home-manager/archive/release-19.03.tar.gz;
    #path = "/home/anton/workdir/home-manager";
  };
}

