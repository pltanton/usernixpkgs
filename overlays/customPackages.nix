self: super:
{
  evolution-ews = super.callPackage ./pkgs/evolutionEws.nix {};
  oh-my-zsh = import ./pkgs/oh-my-zsh.nix super;
  phockup = import ./pkgs/phockup.nix super; 
  ranger_git = super.ranger.overrideAttrs (oldAttrs: rec {
    src = super.fetchFromGitHub {
      owner = "ranger";
      repo = "ranger";
      rev = "bb277d1eff052e2478fb8c132bc42793ce91b870";
      sha256 = "0mvddxvwbzqxyjpwzlz6xhq9kykagfqknwzg0pc7ch5sfi3q6k5z";
    };
    propagatedBuildInputs = oldAttrs.propagatedBuildInputs ++ 
      [ super.pythonPackages.pillow ];
  });
}
