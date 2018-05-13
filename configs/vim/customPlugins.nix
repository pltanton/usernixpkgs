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

  autocomplete-flow = pkgs.vimUtils.buildVimPlugin {
    name = "autocomplete-flow";
    src = pkgs.fetchFromGitHub {
      owner = "wokalski";
      repo = "autocomplete-flow";
      rev = "5d6fb85866ec2edf1eecde823efd2bf471640f5d";
      sha256 = "189g324cb54cks447n40fjci89l4smbq0i34qawrjmg0ng82hmf1";
    };
  };

  deoplete-clang2 = pkgs.vimUtils.buildVimPlugin {
    name = "deoplete-clang2";
    src = pkgs.fetchFromGitHub {
      owner = "tweekmonster";
      repo = "deoplete-clang2";
      rev = "8877dda0a474824977443a112cf0f4fa465e97f6";
      sha256 = "1k8c2ph04fj2c5dqm6ky8jhr8g2srdpafapy102n46nksyyx0yhf";
    };
  };
}
