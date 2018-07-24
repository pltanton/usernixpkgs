self: super:
{
  evolution-ews = super.callPackage ./pkgs/evolutionEws.nix {};
  oh-my-zsh = import ./pkgs/oh-my-zsh.nix super;
  phockup = import ./pkgs/phockup.nix super;
  haskellPackages = super.haskellPackages.override {
    overrides = _self: _super: rec {
      xmonad-contrib = super.haskellPackages.xmonad-contrib.overrideAttrs (old: rec {
        src = super.fetchFromGitHub {
          owner = "IvanMalison";
          repo = "xmonad-contrib";
          rev = "a512351d3a428d837b1dad4c1a1aa50992addfbc";
          sha256 = "1dbb711m3z7i05klyzgx77z039hsg8pckfb3ar17ffc2yzc2mnad";
        };
        propagatedBuildInputs = old.propagatedBuildInputs ++ [ _self.semigroups ];
      });
    };
  };
}
