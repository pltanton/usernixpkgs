pkgs:

{
  neovim = {
    extraConfig = builtins.readFile ../../configs/vim/vimrc;
    enable = true;
    #configure = import ../configs/vim/vim.nix;
    plugins = with (pkgs.vimPlugins // (import ../../configs/vim/customPlugins.nix)); [
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

  home-manager = {
    enable = true;
    path = https://github.com/rycee/home-manager/archive/master.tar.gz;
    #path = https://github.com/rycee/home-manager/archive/release-19.03.tar.gz;
    #path = "/home/anton/workdir/home-manager";
  };
}

