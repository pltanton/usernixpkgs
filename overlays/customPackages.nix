self: super:
{
  evolution-ews = super.callPackage ./pkgs/evolutionEws.nix {};
  oh-my-zsh = import ./pkgs/oh-my-zsh.nix super;
  phockup = import ./pkgs/phockup.nix super; 
  ranger = super.ranger.overrideAttrs (oldAttrs: rec {
    src = super.fetchFromGitHub {
      owner = "ranger";
      repo = "ranger";
      rev = "bb277d1eff052e2478fb8c132bc42793ce91b870";
      sha256 = "0mvddxvwbzqxyjpwzlz6xhq9kykagfqknwzg0pc7ch5sfi3q6k5z";
    };
    propagatedBuildInputs = oldAttrs.propagatedBuildInputs ++ 
      [ super.pythonPackages.pillow ];
  });
  haskellPackages = super.haskellPackages.override {
    overrides = _self: _super: rec {
      xmonad-contrib = super.haskellPackages.xmonad-contrib.overrideAttrs (old: rec {
        version = "0.14";
        src = super.fetchFromGitHub {
          owner = "xmonad";
          repo = "xmonad-contrib";
          rev = "v0.14";
          sha256 = "0y7nwl3i5df1p6i76r9yyhpnbnz9847pbnf8jj000g274ysdmkgr";
        };
        # propagatedBuildInputs = old.propagatedBuildInputs ++ [ _self.semigroups ];
        patches = [];
      });
    };
  };
}
