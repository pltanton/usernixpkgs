pkgs:

{
  programs = import ./modules/programs/linux.nix pkgs;
  packages = import ./modules/packages/linux.nix pkgs;
  files = import ./modules/files/linux.nix pkgs;
  extraHome = import ./home-linux.nix pkgs;
  services = import ./modules/services/linux.nix pkgs;
}
