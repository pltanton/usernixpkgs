self: super:
{
  evolution-ews = super.callPackage ./pkgs/evolutionEws.nix {};
  oh-my-zsh = import ./pkgs/oh-my-zsh.nix super;
  phockup = import ./pkgs/phockup.nix super; 
  ranger = self.pkgs.ranger.overrideAttrs (oldAttrs: {
    src = self.builtins.fetchFromGitHub {
      owner = "ranger";
      repo = "ranger";
      rev = "bb277d1eff052e2478fb8c132bc42793ce91b870";
      sha256 = "1b7fbji17a3n9qbk5w6sfw0ddl06x0s2v3xbfhf0ydvhjnrhifp0";
    };
  });
}
