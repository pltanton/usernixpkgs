pkgs:

{
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
    vim-trailing-whitespace

    fzfWrapper
    vim-devicons
    tagbar
    typescript-vim

    kotlin

    #plantuml-syntax

    coc-nvim
    coc-go
    echodoc-vim

    vim-addon-nix
    ghcmod neco-ghc vimproc

    vimwiki
    vim-orgmode
  ];
}
