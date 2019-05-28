with import <nixpkgs> {};

{
  customRC = builtins.readFile ./vimrc;
  vam.knownPlugins = pkgs.vimPlugins // (import ./customPlugins.nix) // { "tlib" = vimPlugins.tlib_vim; };
  vam.pluginDictionaries = [
    { names = [
      "Tabular"
      "vim-surround"

      "deoplete-nvim"

      "The_NERD_tree"
      "ctrlp"
      "fugitive"
      "undotree"

      "vimtex"

      "airline"
      "oceanic-next"
      "vim-airline-themes"

      "vim-misc"

      #"vim-easytags"

      "echodoc-vim"
      "fzfWrapper"
      "LanguageClient-neovim"

      #"coc-nvim"
      "vim-devicons"
      #"ale"

      "tagbar"
      "kotlin"

      "typescript-vim"

      "tlib"
    ]; }
    { names = [ ]; ft_regex = "^go$"; }
    { names = [ "flake8-vim" "deoplete-jedi" ]; ft_regex = "^python$"; }
    { name = "vim-addon-nix"; file_regex = "^nix$"; }
    { name = "vimtex"; ft_regex = "^tex$"; }
    { names = [ "ghcmod" "neco-ghc" "vimproc" ]; ft_regex = "^haskell$"; }
    #{ names = [ "autocomplete-flow" "vim-javascript" "vim-jsx" ]; ft_regex = "^jsx?$"; }
    { names = [ "deoplete-clang2" ]; ft_regex = "^cpp$"; }
  ];
}
