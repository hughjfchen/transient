let
  pkgs = import <nixpkgs> { };

in
  { transient = pkgs.haskellPackages.callPackage ./transient.nix { };
  }
