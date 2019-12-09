pkgs:

{
  neovim = import ../../configs/vim/vim.nix pkgs;

  taskwarrior = {
    enable = true;
    config = {
      taskd = {
        server = "hz1.kaliwe.ru:53589";
        credentials = "Public/Anton/04a69057-65fa-4f3f-9a37-1c256d7b3bb2";
        certificate = "~/.task_kaliwe/server.cert";
        key = "~/.task_kaliwe/ca.key";
        ca = "~/.task_kaliwe/ca.crt";
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

