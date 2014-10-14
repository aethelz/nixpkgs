# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, binary, Cabal, cautiousFile, dataDefault, derive, dlist
, dynamicState, dyre, filepath, glib, gtk, hashable, hint, HUnit
, lens, makeWrapper, mtl, ooPrototypes, pango, parsec, pointedlist
, QuickCheck, random, regexBase, regexTdfa, safe, semigroups, split
, tagged, tasty, tastyHunit, tastyQuickcheck, text, time
, transformersBase, unixCompat, unorderedContainers, utf8String
, vty, wordTrie, xdgBasedir, yiLanguage, yiRope
}:

cabal.mkDerivation (self: {
  pname = "yi";
  version = "0.10.1";
  sha256 = "1vj4ndp43w7xlji4p2px79a8g90p64g54sr3hx4pzimwrlpmifk8";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    binary Cabal cautiousFile dataDefault derive dlist dynamicState
    dyre filepath glib gtk hashable hint lens mtl ooPrototypes pango
    parsec pointedlist QuickCheck random regexBase regexTdfa safe
    semigroups split tagged text time transformersBase unixCompat
    unorderedContainers utf8String vty wordTrie xdgBasedir yiLanguage
    yiRope
  ];
  testDepends = [
    filepath HUnit lens QuickCheck semigroups tasty tastyHunit
    tastyQuickcheck text yiLanguage yiRope
  ];
  buildTools = [ makeWrapper ];
  configureFlags = "-fpango -fvty";
  noHaddock = self.stdenv.lib.versionOlder self.ghc.version "7.8";
  postInstall = ''
    wrapProgram $out/bin/yi --prefix GHC_PACKAGE_PATH : $out/lib/ghc-${self.ghc.version}/package.conf.d/yi-$version.installedconf:$GHC_PACKAGE_PATH
  '';
  meta = {
    homepage = "http://haskell.org/haskellwiki/Yi";
    description = "The Haskell-Scriptable Editor";
    license = self.stdenv.lib.licenses.gpl2;
    platforms = self.ghc.meta.platforms;
    maintainers = with self.stdenv.lib.maintainers; [ fuuzetsu ];
  };
})
