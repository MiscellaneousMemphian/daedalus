# NOTE: when bumping nixpkgs, also update nixpkgs-src.json and .travis.yml
{ pkgs ? import (fetchTarball https://github.com/NixOS/nixpkgs/archive/61fbdb47a69f78998f55207e64122a0798047b5d.tar.gz) {} }:

with pkgs;

stdenv.mkDerivation {
  name = "daedalus";

  buildInputs = [
    nix bash binutils coreutils curl
    git python27 curl electron nodejs-6_x
    nodePackages.node-gyp nodePackages.node-pre-gyp
    gnumake
  ];

  src = null;

}
