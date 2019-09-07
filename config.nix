{ pkgs }:

{
  allowBroken = true;
  allowUnfree = true;
  android_sdk.accept_license = true;
  oraclejdk.accept_license = true;

  packageOverrides = pkgs: {
    nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
      inherit pkgs;
    };
  };
}
