with import <nixpkgs> {};

{
  customRC = builtins.readFile ./vimrc;
  vam.knownPlugins = pkgs.vimPlugins // (import ./customPlugins.nix);
  vam.pluginDictionaries = [
    { names = [
      "Tabular"
      "surround"

      "deoplete-nvim"

      "The_NERD_tree"
      "ctrlp"
      "fugitive"
      "undotree"

      "vimtex"

      "airline"
      "oceanic-next"
      "vim-airline-themes"

      "vim-notes"
      "vim-misc"

      "vim-easytags"
      "tagbar"
      "ale"

      "kotlin-vim"
    ]; }
    { names = [ "vim-go" "deoplete-go" ]; ft_regex = "^go$"; }
    { names = [ "flake8-vim" "deoplete-jedi" ]; ft_regex = "^python$"; }
    { name = "vim-addon-nix"; file_regex = "^nix$"; }
    { name = "vimtex"; ft_regex = "^tex$"; }
    { names = [ "ghcmod" "neco-ghc" "vimproc" ]; ft_regex = "^haskell$"; }
    { names = [ "autocomplete-flow" "vim-javascript" "vim-jsx" ]; ft_regex = "^jsx?$"; }
    { names = [ "deoplete-clang2" ]; ft_regex = "^cpp$"; }
  ];
}
