{ mkDerivation, base, bytestring, containers, directory, mtl
, primitive, random, stdenv, stm, time, transformers
}:
mkDerivation {
  pname = "transient";
  version = "0.6.3";
  src = ./.;
  libraryHaskellDepends = [
    base bytestring containers directory mtl primitive random stm time
    transformers
  ];
  testHaskellDepends = [
    base bytestring containers directory mtl random stm time
    transformers
  ];
  homepage = "https://github.com/transient-haskell/transient";
  description = "composing programs with multithreading, events and distributed computing";
  license = stdenv.lib.licenses.mit;
}
