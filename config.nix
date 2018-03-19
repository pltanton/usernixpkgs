{ pkgs }:
let
  # Inherit utilities
  inherit (pkgs) lib buildEnv;

  homeDir = builtins.getEnv "HOME";

  myNeovim = pkgs.neovim.override {
    vimAlias = true;
    withPython = true;
    configure = import ./vim/vim.nix;
  };

in {
  packageOverrides = pkgs: {
    myEnvironment = lib.lowPrio (buildEnv {
      name = "my-environment";
      ignoreCollisions = true;
      paths = with pkgs; [
        myNeovim
      ];
    });
  };
}
