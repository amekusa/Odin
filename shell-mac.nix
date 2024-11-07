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
