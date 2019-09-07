with import <nixpkgs> {};

{
  customRC = builtins.readFile ./vimrc;
  vam.knownPlugins = pkgs.vimPlugins // (import ./customPlugins.nix) // { "tlib" = vimPlugins.tlib_vim; };
  vam.pluginDictionaries = [
    { names = [
      "Tabular"
      "vim-surround"

      "deoplete-nvim"
      #"float-preview"

      "The_NERD_tree"
      "ctrlp"
      "fugitive"
      "undotree"

      "vimtex"

      "airline"
      "oceanic-next"
      "vim-airline-themes"

      "vim-misc"
      "vim-trailing-whitespace"

      #"vim-easytags"

      "echodoc-vim"
      "fzfWrapper"
      "LanguageClient-neovim"

      "vim-devicons"

      "tagbar"
      "kotlin"

      "typescript-vim"

      "tlib"
    ]; }
    { names = [ "vim-go" ]; ft_regex = "^go$"; }
    { names = [ ]; ft_regex = "^python$"; }
    { name = "vim-addon-nix"; file_regex = "^nix$"; }
    { name = "vimtex"; ft_regex = "^tex$"; }
    { names = [ "ghcmod" "neco-ghc" "vimproc" ]; ft_regex = "^haskell$"; }
    #{ names = [ "autocomplete-flow" "vim-javascript" "vim-jsx" ]; ft_regex = "^jsx?$"; }
    { names = [ "deoplete-clang2" ]; ft_regex = "^cpp$"; }
  ];
}
