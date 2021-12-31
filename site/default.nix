{ pkgs, stdenv, ... }:
pkgs.stdenv.mkDerivation rec {
  pname = "snu-website";
  version = "0.0.1";
  src = ./.;
  buildInputs = [ pkgs.zola ];
  buildPhase = ''
    zola build
  '';
  installPhase = ''
    cp -r public $out
  '';
}
