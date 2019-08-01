{ mkDerivation, base, bytestring, containers, directory, mtl
, primitive, random, stdenv, stm, time, transformers
, type-level-sets
}:
mkDerivation {
  pname = "transient";
  version = "0.6.4";
  src = ./.;
  libraryHaskellDepends = [
    base bytestring containers directory mtl primitive random stm time
    transformers type-level-sets
  ];
  testHaskellDepends = [
    base bytestring containers directory mtl random stm time
    transformers
  ];
  doHaddock = false;
  doCheck = false;
  homepage = "https://github.com/transient-haskell/transient";
  description = "composing programs with multithreading, events and distributed computing";
  license = stdenv.lib.licenses.mit;
}
