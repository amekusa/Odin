{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  name = "odin";
  nativeBuildInputs = with pkgs; [
    git
    clang_14
    llvmPackages_14.llvm
    llvmPackages_14.bintools
    libiconv
    darwin.apple_sdk.frameworks.System
  ];
  shellHook="CXX=clang++";
}

# NOTE: default.nix:
#       import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/9706f4dd0e516de529fbd15bb8337e4a10d53307.tar.gz") # update: 2024-11-04
