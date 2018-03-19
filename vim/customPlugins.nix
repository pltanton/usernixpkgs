with import <nixpkgs> {};

{
  vim-notes = pkgs.vimUtils.buildVimPlugin {
    name = "vim-notes";
    src = pkgs.fetchFromGitHub {
      owner = "xolox";
      repo = "vim-notes";
      rev = "e465a0a987dbacdf7291688215b8545f8584d409";
      sha256 = "1b7fbji17a3n9qbk5w6sfw0ddl06x0s2v3xbfhf0ydvhjnrhifp0";
    };
  };

  vim-misc = pkgs.vimUtils.buildVimPlugin {
    name = "vim-misc";
    src = pkgs.fetchFromGitHub {
      owner = "xolox";
      repo = "vim-misc";
      rev = "3e6b8fb6f03f13434543ce1f5d24f6a5d3f34f0b";
      sha256 = "0rd9788dyfc58py50xbiaz5j7nphyvf3rpp3yal7yq2dhf0awwfi";
    };
  };
}
