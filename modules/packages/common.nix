pkgs:

let pkgsStable = import <nixos-stable> { };
in (with pkgs; [
  #nerdfonts
  hack-font
  emacs-all-the-icons-fonts

  gnuplot

  nixfmt
  nodePackages.prettier
  nodePackages.vue-language-server
  nodePackages.eslint
  nodePackages.yaml-language-server
  nodePackages.vscode-html-languageserver-bin
  nodePackages.vscode-css-languageserver-bin
])
