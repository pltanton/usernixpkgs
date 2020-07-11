pkgs:

{
  home-manager = {
    enable = true;
    path = https://github.com/rycee/home-manager/archive/release-20.03.tar.gz;
    #path = https://github.com/rycee/home-manager/archive/release-19.03.tar.gz;
    #path = "/home/anton/workdir/home-manager";
  };

  emacs = import ../../configs/emacs/emacs.nix pkgs.emacsMacport;
}
