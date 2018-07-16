self: super:
{
  evolution-ews = super.callPackage ./pkgs/evolutionEws.nix {};
  oh-my-zsh = import ./pkgs/oh-my-zsh.nix super;
  phockup = import ./pkgs/phockup.nix super;
}
