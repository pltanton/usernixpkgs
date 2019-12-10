pkgs:

{
  programs = import ./modules/programs/mac.nix pkgs;
  packages = import ./modules/packages/mac.nix pkgs;
  files = colors: {};
  extraHome = oldAttrs: {};
  services = {};
}
